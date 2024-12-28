import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingButton extends StatefulWidget {
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
  State<SettingButton> createState() => _SettingButtonState();
}

class _SettingButtonState extends State<SettingButton> {
  bool notificationsActive = false;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        notificationsActive = OneSignal.Notifications.permission;
      });
    });
    return GestureDetector(
      onTap:
          widget.onPress ?? () async => await launchUrl(Uri.parse(widget.url!)),
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
              child: Icon(widget.icon, size: 22),
            ),
            const SizedBox(width: 16),
            Text(
              widget.title,
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            widget.isSwitch
                ? Switch(
                    value: notificationsActive,
                    onChanged: (value) async {
                      if (value) {
                        await OneSignal.Notifications.requestPermission(value);
                      } else {
                        openAppSettings();
                      }
                    },
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
