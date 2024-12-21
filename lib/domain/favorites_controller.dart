import 'package:biteflavor/data/posts_repository.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/providers/app_localizations_provider.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:biteflavor/utils/widgets/success_toast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_controller.g.dart';

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  @override
  Future<List<PostUio>> build() async {
    try {
      final posts = ref.watch(postsRepositoryProvider).getAllPosts();
      return posts;
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
      return [];
    }
  }

  Future<void> addPostToFavorites(PostUio post) async {
    try {
      state = const AsyncLoading();
      await ref.read(postsRepositoryProvider).savePost(post);
      final posts = await ref.watch(postsRepositoryProvider).getAllPosts();
      state = AsyncValue.data(posts);
      SuccessToast.showToast(
          message: ref.read(appLocalizationsProvider).addedToFavorites);
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
    }
  }

  Future<void> removePostFromFavorites(PostUio post) async {
    try {
      if (post.id != null) {
        state = const AsyncLoading();
        await ref.read(postsRepositoryProvider).removePost(post.id!);
        final posts = await ref.watch(postsRepositoryProvider).getAllPosts();
        state = AsyncValue.data(posts);
        SuccessToast.showToast(
            message: ref.read(appLocalizationsProvider).removedFromFavorites);
      }
    } catch (e) {
      ErrorToast.showToast(message: e.toString());
    }
  }
}
