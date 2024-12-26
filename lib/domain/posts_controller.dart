import 'package:biteflavor/data/author_repository.dart';
import 'package:biteflavor/data/posts_repository.dart';
import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/models/author.dart';
import 'package:biteflavor/models/models_extensions.dart';
import 'package:biteflavor/models/post.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      if (post.author != null &&
          authors.where((auth) => auth.id == post.author).isEmpty) {
        Author author = await ref
            .read(authorRepositoryProvider)
            .fetchAuthor(id: post.author!);
        authors.add(author);
      }
    }
    List<PostFeaturedMedia> medias = [];
    for (Post post in posts) {
      if (post.featured_media != null) {
        PostFeaturedMedia? media = await ref
            .read(postsRepositoryProvider)
            .getPostFeaturedMedia(id: post.featured_media!);
        if (media != null) {
          medias.add(media);
        }
      }
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return posts
        .map((post) => post.toPostUio(categories, medias, authors))
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
    List<PostFeaturedMedia> medias = [];
    for (Post post in posts) {
      if (post.featured_media != null) {
        PostFeaturedMedia? media = await ref
            .read(postsRepositoryProvider)
            .getPostFeaturedMedia(id: post.featured_media!);
        if (media != null) {
          medias.add(media);
        }
      }
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return posts
        .map((post) => post.toPostUio(categories, medias, authors))
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
    PostFeaturedMedia? media;
    if (post.featured_media != null) {
      media = await ref
          .read(postsRepositoryProvider)
          .getPostFeaturedMedia(id: post.featured_media!);
    }
    List<CategoryUio> categories = ref.watch(categoriesProvider).value ?? [];
    return post.toPostUio(categories, [media!], [author!]);
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
