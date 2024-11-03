import 'dart:io';

import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final void Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.navigationShell,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: kIsWeb,
      child: Container(
        height: (!kIsWeb && Platform.isIOS) ? 102 : 82,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(0.0, -2.0),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24.0),
          ),
          child: BottomNavigationBar(
            currentIndex: navigationShell.currentIndex > 3
                ? 3
                : navigationShell.currentIndex < 0
                    ? 0
                    : navigationShell.currentIndex,
            onTap: onTap,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            iconSize: 20.0,
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  navigationShell.currentIndex == 0
                      ? Iconsax.home_2_bold
                      : Iconsax.home_2_outline,
                ),
                label: context.l10n.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  navigationShell.currentIndex == 1
                      ? MingCute.search_3_fill
                      : MingCute.search_3_line,
                ),
                label: context.l10n.search,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  navigationShell.currentIndex == 2
                      ? EvaIcons.bookmark
                      : EvaIcons.bookmark_outline,
                ),
                label: context.l10n.favorites,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  navigationShell.currentIndex == 3
                      ? EvaIcons.settings
                      : EvaIcons.settings_outline,
                ),
                label: context.l10n.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
