import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class calendarPickerProvider extends ChangeNotifier{
  String? formattedDate ;
  final myController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  void updateSelectedDate(DateTime newDate) {

      selectedDate = newDate;
      formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate.toLocal());
      myController.text = formattedDate!;

  }

}