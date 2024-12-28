import 'package:intl/intl.dart';

extension DateExtension on DateTime? {
  String toMonthDayYearText() {
    if (this == null) {
      return "";
    }

    final String formattedDate = DateFormat('MMM dd, yyyy').format(this!);

    return formattedDate;
  }

  String timeAgo() {
    if (this == null) return "";

    final now = DateTime.now();
    final difference = now.difference(this!);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} s';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} m';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} h';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} d';
    } else {
      // Format as "23 Dec, 2023"
      return '${this!.day} ${_monthName(this!.month)}, ${this!.year}';
    }
  }

  String _monthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[month - 1];
  }
}
