import 'package:biteflavor/presentation/settings/widgets/setting_button.dart';
import 'package:biteflavor/presentation/settings/widgets/setting_title.dart';
import 'package:biteflavor/presentation/settings/widgets/social_media_button.dart';
import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/constant/app_urls.dart';
import 'package:biteflavor/utils/extensios/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:in_app_review/in_app_review.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SettingTitle(title: context.l10n.settings),
        SettingButton(
          icon: EvaIcons.bell_outline,
          title: context.l10n.notifications,
          onPress: () {},
          isSwitch: true,
        ),
        SettingButton(
          icon: EvaIcons.star_outline,
          title: context.l10n.rateApp,
          onPress: () async {
            final InAppReview inAppReview = InAppReview.instance;

            if (await inAppReview.isAvailable()) {
              inAppReview.requestReview();
            }
          },
        ),
        SettingTitle(title: context.l10n.ourLinks),
        SettingButton(
          icon: EvaIcons.person_outline,
          title: context.l10n.aboutUs,
          url: AppUrls.aboutUs,
        ),
        SettingButton(
          icon: EvaIcons.email_outline,
          title: context.l10n.contactUs,
          url: AppUrls.contactUs,
        ),
        SettingButton(
          icon: EvaIcons.file_text_outline,
          title: context.l10n.privacyPolicy,
          url: AppUrls.privacyPolicy,
        ),
        SettingButton(
          icon: EvaIcons.file_text_outline,
          title: context.l10n.termsOfService,
          url: AppUrls.termsOfService,
        ),
        SettingTitle(title: context.l10n.ourSocialMedia),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SocialMediaButton(
                url: AppUrls.facebook,
                icon: AppImages.facebook,
              ),
              SizedBox(width: 16),
              SocialMediaButton(
                url: AppUrls.instagram,
                icon: AppImages.instagram,
              )
            ],
          ),
        ),
        const SizedBox(height: 24)
      ],
    );
  }
}
