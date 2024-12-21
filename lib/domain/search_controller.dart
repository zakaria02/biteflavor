import 'package:biteflavor/data/author_repository.dart';
import 'package:biteflavor/data/posts_repository.dart';
import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller.g.dart';

@Riverpod(keepAlive: true)
class SearchedPosts extends _$SearchedPosts {
  @override
  Future<List<PostUio>> build() async {
    try {
      searchWithTitle("");
      return [];
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
      return [];
    }
  }

  Future<void> searchWithTitle(String title) async {
    try {
      state = const AsyncLoading();
      final searchedPostsIds =
          await ref.read(postsRepositoryProvider).searchPosts(title: title);
      List<PostUio> posts = [];
      for (int postId in searchedPostsIds) {
        Author? author;
        Post post = await ref
            .watch(postsRepositoryProvider)
            .fetchPostDetails(postId: postId);
        if (post.author != null) {
          author = await ref
              .read(authorRepositoryProvider)
              .fetchAuthor(id: post.author!);
        }
        List<CategoryUio> categories =
            ref.watch(categoriesProvider).value ?? [];
        posts.add(PostUio(
          id: post.id,
          title: post.title?.rendered,
          htmlContent: post.content?.rendered,
          categories: categories
              .where((category) =>
                  (post.categories ?? []).contains(category.id ?? 0))
              .toList(),
          picture: post.uagb_featured_image_src?.large?.first.toString(),
          date: post.date,
          author: author?.toAuthorUio(),
          link: post.link,
        ));
      }
      state = AsyncValue.data(posts);
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
    }
  }
}
