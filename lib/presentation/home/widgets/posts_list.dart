import 'package:biteflavor/presentation/home/widgets/post_overview.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/views/no_data_view.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.posts});

  final List<PostUio> posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: posts.isEmpty
          ? NoDataView(
              title: context.l10n.noPosts,
            )
          : Column(
              children: posts.map((post) => PostOverview(post: post)).toList(),
            ),
    );
  }
}
