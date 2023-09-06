import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarPickerProvider extends ChangeNotifier {
  String? formattedDate;

  final TextEditingController myController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  void updateSelectedDate(DateTime newDate) {
    selectedDate = newDate;
    formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate.toLocal());
    myController.text = formattedDate!;
  }
}
