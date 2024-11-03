import 'package:biteflavor/presentation/home/widgets/post_overview.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.posts});

  final List<PostUio> posts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: posts.map((post) => PostOverview(post: post)).toList(),
      ),
    );
  }
}
