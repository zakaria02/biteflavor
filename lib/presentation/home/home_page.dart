import 'dart:async';

import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/domain/posts_controller.dart';
import 'package:biteflavor/presentation/home/widgets/categories_list.dart';
import 'package:biteflavor/presentation/home/widgets/posts_carousel_slider.dart';
import 'package:biteflavor/presentation/home/widgets/posts_list.dart';
import 'package:biteflavor/presentation/home/widgets/section_title.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/views/no_internet_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late StreamSubscription<List<ConnectivityResult>> subscription;
  bool isConnected = true;
  @override
  initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      setState(() {
        isConnected = !result.contains(ConnectivityResult.none);
      });
    });
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!isConnected) {
      return const NoInternetView();
    }
    return ListView(
      shrinkWrap: true,
      children: [
        ref.watch(mainCategoriesProvider).when(
              data: (categories) => CategoriesList(
                categories: categories.toList(),
              ),
              error: (_, __) => const SizedBox(
                height: 0,
              ),
              loading: () => const Skeletonizer(
                child: CategoriesList(
                  categories: CategoryUio.mock,
                ),
              ),
            ),
        const SizedBox(height: 16),
        SectionTitle(
          title: context.l10n.categoryArticles(
              ref.watch(selectedCategoryProvider)?.name ?? ""),
          id: ref.watch(selectedCategoryProvider)?.id,
          onPress: () {},
        ),
        const SizedBox(height: 16),
        ref
            .watch(postsProvider(
                categoryId: ref.watch(selectedCategoryProvider)?.id))
            .when(
              data: (posts) => PostsCarouselSlider(
                posts: posts.toList(),
              ),
              error: (_, __) => const SizedBox(
                height: 0,
              ),
              loading: () => Skeletonizer(
                child: PostsCarouselSlider(
                  posts: PostUio.mock,
                ),
              ),
            ),
        const SizedBox(height: 12),
        SectionTitle(
          title: context.l10n.latest,
          onPress: () {},
        ),
        const SizedBox(height: 12),
        ref.watch(latestProvider).when(
              data: (posts) => PostsList(
                posts: posts.toList(),
              ),
              error: (_, __) => const SizedBox(
                height: 0,
              ),
              loading: () => Skeletonizer(
                child: PostsList(
                  posts: PostUio.mock,
                ),
              ),
            ),
      ],
    );
  }
}
