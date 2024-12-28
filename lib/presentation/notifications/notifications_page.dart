import 'package:biteflavor/presentation/notifications/widgets/notifications_list.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 28,
                  ),
                ),
                Expanded(
                  child: Text(
                    context.l10n.notifications,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(width: 40)
              ],
            ),
          ),
          const SizedBox(height: 24),
          NotificationsList(),
        ],
      ),
    );
  }
}
