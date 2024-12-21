import 'package:biteflavor/domain/favorites_controller.dart';
import 'package:biteflavor/domain/posts_controller.dart';
import 'package:biteflavor/presentation/post/widget/post_details_view.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PostDetailsPage extends ConsumerStatefulWidget {
  const PostDetailsPage({super.key, required this.postId});

  final int postId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PostDetailsPageState();
}

class _PostDetailsPageState extends ConsumerState<PostDetailsPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(postDetailsProvider(postId: widget.postId));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final favorites = ref.watch(favoritesProvider).value ?? [];
      setState(() {
        isFavorite =
            favorites.firstWhereOrNull((post) => post.id == state.value?.id) !=
                null;
      });
    });

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 28,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: state.value != null
                    ? () {
                        if (isFavorite) {
                          ref
                              .read(favoritesProvider.notifier)
                              .removePostFromFavorites(state.value!);
                        } else {
                          ref
                              .read(favoritesProvider.notifier)
                              .addPostToFavorites(state.value!);
                        }
                      }
                    : null,
                icon: Icon(
                  isFavorite
                      ? Bootstrap.bookmark_plus_fill
                      : Bootstrap.bookmark_plus,
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: state.value?.link != null
                    ? () => Share.share(
                          context.l10n.shareArticle(
                            state.value?.link ?? "",
                          ),
                        )
                    : null,
                icon: const Icon(
                  Bootstrap.share,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: state.when(
            data: (post) => PostDetailsView(post: post),
            error: (_, __) => const SizedBox(
              height: 0,
            ),
            loading: () => Skeletonizer(
              child: PostDetailsView(post: PostUio.mock.first),
            ),
          ),
        ),
      ],
    );
  }
}
