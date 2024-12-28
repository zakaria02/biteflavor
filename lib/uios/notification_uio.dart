import 'package:hive/hive.dart';

part 'notification_uio.g.dart';

@HiveType(typeId: 4)
class NotificationUio {
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final bool? read;
  @HiveField(3)
  final DateTime? addedAt;
  @HiveField(4)
  final int? postId;

  const NotificationUio(
      {this.title, this.description, this.read, this.addedAt, this.postId});

  static final List<NotificationUio> mockNotifications = [
    NotificationUio(
      title: "Welcome to the App!",
      description:
          "Thank you for signing up. Explore the app to discover features.",
      read: false,
      addedAt: DateTime.now().subtract(Duration(minutes: 5)),
    ),
    NotificationUio(
      title: "New Update Available",
      description: "Version 2.0 is out! Update now for exciting new features.",
      read: false,
      addedAt: DateTime.now().subtract(Duration(hours: 2)),
    ),
    NotificationUio(
      title: "Weekly Insights",
      description: "Check out your activity stats for the past week.",
      read: true,
      addedAt: DateTime.now().subtract(Duration(days: 1)),
    ),
    NotificationUio(
      title: "Event Reminder",
      description: "Don't forget your meeting scheduled for tomorrow at 10 AM.",
      read: true,
      addedAt: DateTime.now().subtract(Duration(days: 2)),
    ),
    NotificationUio(
      title: "Special Offer Just for You",
      description:
          "Get 20% off on your next purchase. Offer valid till Sunday.",
      read: false,
      addedAt: DateTime.now().subtract(Duration(days: 3)),
    ),
    NotificationUio(
      title: "Maintenance Notice",
      description: "Scheduled maintenance on the app this Saturday at 1 AM.",
      read: true,
      addedAt: DateTime.now().subtract(Duration(days: 4)),
    ),
    NotificationUio(
      title: "Friend Request",
      description: "You have a new friend request from John Doe.",
      read: false,
      addedAt: DateTime.now().subtract(Duration(days: 5)),
    ),
    NotificationUio(
      title: "Security Alert",
      description: "Your account was accessed from a new device.",
      read: true,
      addedAt: DateTime.now().subtract(Duration(days: 6)),
    ),
    NotificationUio(
      title: "Survey Invitation",
      description: "Share your feedback by participating in our survey.",
      read: false,
      addedAt: DateTime.now().subtract(Duration(days: 7)),
    ),
    NotificationUio(
      title: "Achievement Unlocked",
      description: "Congratulations! You've completed all tasks for the month.",
      read: true,
      addedAt: DateTime.now().subtract(Duration(days: 8)),
    ),
  ];
}
