import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/extensios/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostOverview extends StatelessWidget {
  const PostOverview({super.key, required this.post});
  final PostUio post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                post.picture ?? "",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if ((post.categories ?? []).isNotEmpty)
                  Text(
                    post.categories?.first.name ?? "",
                    style: GoogleFonts.quicksand(
                      fontSize: 12,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                Text(
                  post.title ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        post.author?.picture ?? "",
                        fit: BoxFit.fill,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "${post.author?.name ?? ""}   \u2022   ${post.date?.toMonthDayYearText()}",
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
