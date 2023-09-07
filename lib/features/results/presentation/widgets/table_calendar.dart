import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/features/results/providers/calendar_picker_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:ui' as ui;

class TableCalendarWidget extends StatefulWidget {
  const TableCalendarWidget({Key? key}) : super(key: key);

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime today = DateTime.now();
  final myController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  void selectDay(DateTime day, DateTime foucsedDay) {
    setState(() {
      today = day;
    });
  }

  late final ValueNotifier<List> selectedEvents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: ui.TextDirection.ltr,
          child: Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
            child: TableCalendar(
              availableGestures: AvailableGestures.horizontalSwipe,
              calendarStyle: CalendarStyle(
                  weekendTextStyle:
                      GoogleFonts.cairo(fontWeight: FontWeight.w600),
                  defaultTextStyle:
                      GoogleFonts.cairo(fontWeight: FontWeight.w600),
                  selectedTextStyle: GoogleFonts.cairo(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  todayTextStyle:
                      GoogleFonts.cairo(fontWeight: FontWeight.w600),
                  defaultDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  holidayDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  disabledDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  markerDecoration: const BoxDecoration(shape: BoxShape.circle),
                  outsideDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  rangeEndDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  rangeStartDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  rowDecoration: const BoxDecoration(shape: BoxShape.circle),
                  withinRangeDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  weekendDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  todayDecoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: const BoxDecoration(
                    color: AppColors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                  cellMargin: EdgeInsets.symmetric(horizontal: 2.w)),
              headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleTextStyle: GoogleFonts.cairo(
                      fontWeight: FontWeight.w500, fontSize: 15.sp),
                  titleCentered: true),
              focusedDay:
                  Provider.of<CalendarPickerProvider>(context, listen: false)
                      .selectedDate,
              selectedDayPredicate: (day) => isSameDay(
                day,
                Provider.of<CalendarPickerProvider>(context, listen: false)
                    .selectedDate,
              ),
              firstDay: DateTime.utc(2023, 1, 1),
              lastDay: DateTime.utc(2023, 12, 31),
              rowHeight: 5.h,
              onDaySelected: (day, focusedDay) {
                setState(() {
                  Provider.of<CalendarPickerProvider>(context, listen: false)
                      .updateSelectedDate(day);
                  selectDay(day, focusedDay);
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
