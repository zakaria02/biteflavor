import 'package:biteflavor/domain/posts_controller.dart';
import 'package:biteflavor/presentation/home/widgets/posts_list.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PostsListPage extends ConsumerWidget {
  const PostsListPage({
    super.key,
    required this.title,
    this.categoryId,
  });

  final int? categoryId;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 40)
            ],
          ),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: ref.watch(seeMorePostsProvider(categoryId: categoryId)).when(
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
