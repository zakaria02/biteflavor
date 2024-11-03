import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset(
            AppImages.noInternet,
            height: 320,
          ),
        ),
        Text(
          "OUPS !",
          style: GoogleFonts.quicksand(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          context.l10n.noInternet,
          style: GoogleFonts.quicksand(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        Container(
          width: double.infinity,
          height: 54,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ElevatedButton(
            onPressed: () => const FavoriteRoute().go(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
            child: Text(
              context.l10n.goToFavorites,
            ),
          ),
        )
      ],
    );
  }
}
