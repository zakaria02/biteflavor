import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final int? id;
  final String title;
  final VoidCallback onPress;

  const SectionTitle({
    super.key,
    this.id,
    required this.title,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          GestureDetector(
            onTap: () =>
                PostsListRoute(title: title, categoryId: id == -1 ? null : id)
                    .go(context),
            child: Text(
              context.l10n.seeMore,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
