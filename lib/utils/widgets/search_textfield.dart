import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: context.l10n.findAnArticle,
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            EvaIcons.search_outline,
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.border,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.border,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
