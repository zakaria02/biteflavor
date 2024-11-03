import 'package:biteflavor/domain/categories_controller.dart';
import 'package:biteflavor/domain/posts_controller.dart';
import 'package:biteflavor/models/category.dart';
import 'package:biteflavor/presentation/home/widgets/categories_list.dart';
import 'package:biteflavor/presentation/home/widgets/posts_carousel_slider.dart';
import 'package:biteflavor/presentation/home/widgets/posts_list.dart';
import 'package:biteflavor/presentation/home/widgets/section_title.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/utils/widgets/custom_app_bar.dart';
import 'package:biteflavor/utils/widgets/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SearchTextfield(),
                  ref.watch(mainCategoriesProvider).when(
                        data: (categories) => CategoriesList(
                          categories: categories.toList(),
                        ),
                        error: (_, __) => const SizedBox(
                          height: 0,
                        ),
                        loading: () => const Skeletonizer(
                          child: CategoriesList(
                            categories: Category.mock,
                          ),
                        ),
                      ),
                  const SizedBox(height: 16),
                  SectionTitle(
                    title: context.l10n.categoryArticles(
                        ref.watch(selectedCategoryProvider)?.name ?? ""),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
