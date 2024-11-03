import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.url, required this.icon});

  final String url;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async => await launchUrl(Uri.parse(url)),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black45,
              )),
          child: Image.asset(
            icon,
            height: 36,
            width: 36,
          ),
        ),
      ),
    );
  }
}
