import 'package:biteflavor/presentation/home/widgets/post_display.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PostsCarouselSlider extends StatefulWidget {
  const PostsCarouselSlider({
    super.key,
    required this.posts,
  });

  final List<PostUio> posts;

  @override
  State<PostsCarouselSlider> createState() => _PostsCarouselSliderState();
}

class _PostsCarouselSliderState extends State<PostsCarouselSlider> {
  int currentIndex = 0;
  @override
  void initState() {
    currentIndex = widget.posts.length > 1 ? 1 : 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider(
            items: widget.posts.map((post) => PostDisplay(post: post)).toList(),
            options: CarouselOptions(
              height: 220,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: currentIndex,
              enableInfiniteScroll: false,
              autoPlay: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
