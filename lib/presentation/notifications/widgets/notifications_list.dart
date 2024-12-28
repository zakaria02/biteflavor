import 'package:biteflavor/domain/notifications_controller.dart';
import 'package:biteflavor/presentation/notifications/widgets/notification_card.dart';
import 'package:biteflavor/uios/notification_uio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NotificationsList extends ConsumerWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ref.watch(notificationsProvider).when(
            data: (notifications) => ListView(
              children: notifications
                  .map(
                    (notification) =>
                        NotificationCard(notification: notification),
                  )
                  .toList(),
            ),
            error: (err, _) => ErrorWidget(err),
            loading: () => Skeletonizer(
              child: ListView(
                children: NotificationUio.mockNotifications
                    .map(
                      (notification) =>
                          NotificationCard(notification: notification),
                    )
                    .toList(),
              ),
            ),
          ),
    );
  }
}
