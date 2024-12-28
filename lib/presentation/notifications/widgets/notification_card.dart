import 'package:biteflavor/data/notification_repository.dart';
import 'package:biteflavor/uios/notification_uio.dart';
import 'package:biteflavor/utils/constant/app_images.dart';
import 'package:biteflavor/utils/extensios/date_extension.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationCard extends ConsumerWidget {
  const NotificationCard({super.key, required this.notification});
  final NotificationUio notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref
            .read(notificationRepositoryProvider)
            .markAsRead(notification.postId);
        PostDetailsRoute(postId: notification.postId ?? 0).go(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffE7F5E7),
                ),
                child: SvgPicture.asset(
                  AppImages.article,
                  height: 32,
                  width: 32,
                ),
              ),
            ),
            const SizedBox(width: 18),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        notification.title ?? "",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Visibility(
                        visible: notification.read != true,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        notification.addedAt?.timeAgo() ?? "",
                        style: GoogleFonts.quicksand(
                          fontSize: 14,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    notification.description ?? "",
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
