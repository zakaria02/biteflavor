import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        title,
        style: GoogleFonts.quicksand(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
