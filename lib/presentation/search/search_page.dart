import 'package:biteflavor/domain/search_controller.dart';
import 'package:biteflavor/presentation/home/widgets/posts_list.dart';
import 'package:biteflavor/presentation/search/widgets/search_textfield.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const SearchTextfield(),
        const SizedBox(height: 16),
        Expanded(
          child: ref.watch(searchedPostsProvider).when(
                data: (posts) =>
                    SingleChildScrollView(child: PostsList(posts: posts)),
                error: (err, _) => ErrorWidget(err),
                loading: () => Skeletonizer(
                    child: SingleChildScrollView(
                        child: PostsList(posts: PostUio.mock))),
              ),
        ),
      ],
    );
  }
}
