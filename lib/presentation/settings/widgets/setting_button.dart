import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    super.key,
    required this.icon,
    required this.title,
    this.url,
    this.onPress,
    this.isSwitch = false,
  }) : assert(onPress != null || url != null);

  final IconData icon;
  final String title;
  final String? url;
  final VoidCallback? onPress;
  final bool isSwitch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () async => await launchUrl(Uri.parse(url!)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
              ),
              child: Icon(icon, size: 22),
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            isSwitch
                ? Switch(
                    value: true,
                    onChanged: (value) {},
                    activeTrackColor: Colors.grey[100],
                    activeColor: Colors.green,
                  )
                : const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
          ],
        ),
      ),
    );
  }
}
