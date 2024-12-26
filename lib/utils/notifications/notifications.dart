import 'package:biteflavor/utils/providers/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void initNotification(GoRouter router) {
  OneSignal.Notifications.addClickListener((event) {
    if (event.notification.additionalData != null) {
      for (var entry in event.notification.additionalData!.entries) {
        if (entry.key == 'id') {
          final int id = int.parse(entry.value);
          router.push(PostDetailsRoute(postId: id).location);
        }
      }
    }
  });
}
