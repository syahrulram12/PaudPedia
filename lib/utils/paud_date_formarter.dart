import 'package:intl/intl.dart';

class PaudDateFormater {
  static String FORMAT_V1 = "EEEE, dd-MM-yyyy, HH:mm";
  static String FORMAT_V2 = "dd-MM-yyyy, HH:mm";
  static String FORMAT_V3 = "EEEE, dd-MM-yyyy";

  static String formatDateFor(String format, String date) {
    try {
      DateTime dateTime = DateTime.parse(date);
      return DateFormat(format, "id_ID").format(dateTime);
    } catch (e) {
      return "";
    }
  }

  static String formatDateTimeFor(String format, DateTime date) {
    try {
      return DateFormat(format, "id_ID").format(date);
    } catch (e) {
      return "";
    }
  }
}
