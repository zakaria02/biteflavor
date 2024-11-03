import 'package:biteflavor/uios/post_uio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({super.key, required this.post});

  final PostUio? post;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            post?.title ?? "",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 8),
        if (post?.picture != null) Image.network(post?.picture ?? ""),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (post?.author?.picture != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.network(
                    post?.author?.picture ?? "",
                    fit: BoxFit.fill,
                    height: 45,
                    width: 45,
                  ),
                ),
              const SizedBox(width: 8),
              Text(
                post?.author?.name ?? "",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HtmlWidget(post?.htmlContent ?? ""),
        ),
      ],
    );
  }
}
