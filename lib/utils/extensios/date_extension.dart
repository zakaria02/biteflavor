import 'package:intl/intl.dart';

extension DateExtension on DateTime? {
  String toMonthDayYearText() {
    if (this == null) {
      return "";
    }

    final String formattedDate = DateFormat('MMM dd, yyyy').format(this!);

    return formattedDate;
  }
}
