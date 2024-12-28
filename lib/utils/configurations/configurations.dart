import 'package:biteflavor/data/notification_repository.dart';
import 'package:biteflavor/firebase_options.dart';
import 'package:biteflavor/uios/author_uio.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:biteflavor/uios/notification_uio.dart';
import 'package:biteflavor/uios/post_uio.dart';
import 'package:biteflavor/utils/constant/app_texts.dart';
import 'package:biteflavor/utils/providers/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void initNotificationClickListnner(GoRouter router) {
  OneSignal.Notifications.addClickListener((event) {
    if (event.notification.additionalData != null) {
      for (var entry in event.notification.additionalData!.entries) {
        if (entry.key == 'id') {
          final int id = int.parse(entry.value);
          final container = ProviderContainer();
          final notifRepository =
              container.read(notificationRepositoryProvider);
          notifRepository.markAsRead(id);
          router.push(PostDetailsRoute(postId: id).location);
        }
      }
    }
  });
}

Future<void> initGoogleAdmob() async {
  await MobileAds.instance.initialize();
  await MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: [
        '7ED5CEE9072BC98CBD4CF5C4B58BA2D5', // Android test device
        "e6e89e0c49562d6cdc067c1584fc5b89" // iOS test device
      ],
    ),
  );
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> initNotifications() async {
  OneSignal.initialize(AppTexts.oneSignalId);
  await OneSignal.Notifications.requestPermission(true);

  OneSignal.Notifications.addForegroundWillDisplayListener((event) async {
    late int id;
    if (event.notification.additionalData != null) {
      for (var entry in event.notification.additionalData!.entries) {
        if (entry.key == 'id') {
          id = int.parse(entry.value);
        }
      }
    }
    final container = ProviderContainer();
    final notifRepository = container.read(notificationRepositoryProvider);
    await notifRepository.saveNotification(
      NotificationUio(
        title: event.notification.title,
        description: event.notification.body,
        read: false,
        addedAt: DateTime.now(),
        postId: id,
      ),
    );
  });
}

Future<void> initLocalDatabase() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PostUioAdapter());
  Hive.registerAdapter(CategoryUioAdapter());
  Hive.registerAdapter(AuthorUioAdapter());
  Hive.registerAdapter(NotificationUioAdapter());
}
