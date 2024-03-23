import 'package:intl/intl.dart';

String dateFormatValue(String? value) {
  if (value == null || value.isEmpty) {
    return "";
  } else {
    var date = DateFormat("dd-MMMM").format(DateTime.parse(value));
    return date;
  }
}

String timeFormatValue(String? value) {
  if (value == null || value.isEmpty) {
    return "";
  } else {
    var date = DateFormat("HH:mm").format(DateTime.parse(value));
    return date;
  }
}
