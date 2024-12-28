import 'package:biteflavor/data/notification_repository.dart';
import 'package:biteflavor/utils/constant/app_colors.dart';
import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/constant/app_styles.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends ConsumerStatefulWidget {
  const CustomAppBar({super.key});

  @override
  ConsumerState<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends ConsumerState<CustomAppBar> {
  int notifsCount = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      int count = await ref
          .watch(notificationRepositoryProvider)
          .getNotificationsCount();
      setState(() {
        notifsCount = count;
      });
    });
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
            onPressed: () => NotificationsRoute().go(context),
            icon: notifsCount == 0
                ? NotificationButton()
                : Badge.count(
                    count: notifsCount,
                    child: NotificationButton(),
                  ),
          )
        ],
      ),
    );
  }
}

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: const Icon(
        EvaIcons.bell_outline,
      ),
    );
  }
}
