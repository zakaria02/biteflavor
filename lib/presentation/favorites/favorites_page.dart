import 'package:biteflavor/domain/favorites_controller.dart';
import 'package:biteflavor/presentation/home/widgets/post_overview.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/views/no_data_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: ref.watch(favoritesProvider).when(
            data: (posts) => posts.isEmpty
                ? NoDataView(
                    title: context.l10n.noFavorites,
                  )
                : ListView(
                    children:
                        posts.map((post) => PostOverview(post: post)).toList(),
                  ),
            error: (_, __) => const SizedBox(),
            loading: () => Skeletonizer(
              child: ListView(
                children: PostUio.mock
                    .map((post) => PostOverview(post: post))
                    .toList(),
              ),
            ),
          ),
    );
  }
}
