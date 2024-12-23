import 'package:biteflavor/data/author_repository.dart';
import 'package:biteflavor/data/posts_repository.dart';
import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'posts_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<PostUio>> posts(Ref ref, {int? categoryId, int count = 5}) async {
  try {
    List<Post> posts = await ref
        .watch(postsRepositoryProvider)
        .fetchCategoryArticlesByCount(
            categoryId: categoryId == -1 ? null : categoryId, count: count);
    List<Author> authors = [];
    for (Post post in posts) {
      if (post.author != null) {
        Author author = await ref
            .read(authorRepositoryProvider)
            .fetchAuthor(id: post.author!);
        authors.add(author);
      }
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return posts
        .map((post) => PostUio(
              id: post.id,
              title: post.title?.rendered,
              htmlContent: post.content?.rendered,
              categories: categories
                  .where((category) =>
                      (post.categories ?? []).contains(category.id ?? 0))
                  .toList(),
              picture: post.uagb_featured_image_src?.large?.first.toString(),
              date: post.date,
              author: authors
                  .firstWhereOrNull((author) => author.id == post.author)
                  ?.toAuthorUio(),
            ))
        .toList();
  } catch (e) {
    ErrorToast.showToast(message: e.toString());
    return [];
  }
}

@Riverpod(keepAlive: true)
Future<List<PostUio>> latest(Ref ref) async {
  try {
    List<Post> posts =
        await ref.watch(postsRepositoryProvider).fetchLatestArticles();
    List<Author> authors = [];
    for (Post post in posts) {
      if (post.author != null) {
        Author author = await ref
            .read(authorRepositoryProvider)
            .fetchAuthor(id: post.author!);
        authors.add(author);
      }
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return posts
        .map(
          (post) => PostUio(
            id: post.id,
            title: post.title?.rendered,
            htmlContent: post.content?.rendered,
            categories: categories
                .where((category) =>
                    (post.categories ?? []).contains(category.id ?? 0))
                .toList(),
            picture: post.uagb_featured_image_src?.large?.first.toString(),
            date: post.date,
            author: authors
                .firstWhereOrNull((author) => author.id == post.author)
                ?.toAuthorUio(),
            link: post.link,
          ),
        )
        .toList();
  } catch (e) {
    ErrorToast.showToast(message: e.toString());
    return [];
  }
}

@riverpod
Future<PostUio?> postDetails(Ref ref, {required int postId}) async {
  try {
    Author? author;
    Post post = await ref
        .watch(postsRepositoryProvider)
        .fetchPostDetails(postId: postId);
    if (post.author != null) {
      author = await ref
          .read(authorRepositoryProvider)
          .fetchAuthor(id: post.author!);
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return PostUio(
      id: post.id,
      title: post.title?.rendered,
      htmlContent: post.content?.rendered,
      categories: categories
          .where(
              (category) => (post.categories ?? []).contains(category.id ?? 0))
          .toList(),
      picture: post.uagb_featured_image_src?.large?.first.toString(),
      date: post.date,
      author: author?.toAuthorUio(),
      link: post.link,
    );
  } catch (e) {
    final post = await ref.watch(postsRepositoryProvider).getPostById(postId);
    if (post != null) {
      return post;
    }
    ErrorToast.showToast(message: e.toString());
    return null;
  }
}

@riverpod
Future<List<PostUio>> seeMorePosts(Ref ref, {int? categoryId}) async {
  if (categoryId == null) {
    return latest(ref);
  }
  return posts(ref, categoryId: categoryId, count: 10);
}
