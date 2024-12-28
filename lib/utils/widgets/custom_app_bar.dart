import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/constant/app_styles.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => const HomeRoute().go(context),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppImages.logo),
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.border,
                ),
              ),
            ),
          ),
          Text(
            AppTexts.blogName,
            style: AppStyles.titleStyle,
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.border,
                ),
              ),
              child: const Icon(
                EvaIcons.bell_outline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
