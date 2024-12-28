import 'package:biteflavor/data/notification_repository.dart';
import 'package:biteflavor/uios/notification_uio.dart';
import 'package:biteflavor/utils/widgets/error_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifications_controller.g.dart';

@riverpod
Future<List<NotificationUio>> notifications(Ref ref) async {
  try {
    return (await ref
            .read(notificationRepositoryProvider)
            .getAllNotifications())
        .reversed
        .toList();
  } catch (e) {
    ErrorToast.showToast(message: e.toString());
    return [];
  }
}
