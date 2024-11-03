import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/constant/app_styles.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
                EvaIcons.bellOutline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
