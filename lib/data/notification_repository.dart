import 'package:biteflavor/uios/notification_uio.dart';
import 'package:biteflavor/utils/providers/app_localizations_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'notification_repository.g.dart';

@Riverpod(keepAlive: true)
class NotificationRepository extends _$NotificationRepository {
  @override
  NotificationApi build() {
    return NotificationApi(
      ref.watch(appLocalizationsProvider),
      Hive.openBox("notificationBox"),
    );
  }
}

class NotificationApi {
  final AppLocalizations _localizations;
  final Future<Box<NotificationUio>> _notificationBox;
  NotificationApi(
    this._localizations,
    this._notificationBox,
  );

  Future<void> saveNotification(NotificationUio notification) async {
    try {
      Box<NotificationUio> box = await _notificationBox;
      final list = await getAllNotifications();
      if (list.where((item) => item.postId == notification.postId).isEmpty) {
        await box.add(notification);
      }
    } catch (e) {
      throw _localizations.defaultError;
    }
  }

  Future<void> markAsRead(int? id) async {
    try {
      Box<NotificationUio> box = await _notificationBox;
      final List<NotificationUio> notifications = await getAllNotifications();

      int? notificationIndex =
          notifications.indexWhere((notif) => notif.postId == id);

      if (notificationIndex != -1) {
        NotificationUio updatedNotification = NotificationUio(
          title: notifications[notificationIndex].title,
          description: notifications[notificationIndex].description,
          read: true,
          addedAt: notifications[notificationIndex].addedAt,
          postId: id,
        );
        await box.putAt(notificationIndex, updatedNotification);
      }
    } catch (e) {
      throw _localizations.defaultError;
    }
  }

  Future<List<NotificationUio>> getAllNotifications() async {
    try {
      Box<NotificationUio> box = await _notificationBox;
      return box.values.toList();
    } catch (e) {
      throw _localizations.defaultError;
    }
  }

  Future<int> getNotificationsCount() async {
    try {
      final List<NotificationUio> notifications = await getAllNotifications();
      return notifications.where((notif) => notif.read != true).length;
    } catch (e) {
      throw _localizations.defaultError;
    }
  }
}
