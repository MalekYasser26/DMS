import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalendarWidget extends StatefulWidget {
   TableCalendarWidget({Key? key,}) : super(key: key);

  @override
  State<TableCalendarWidget> createState() => _TableCalendarWidgetState();
}

class _TableCalendarWidgetState extends State<TableCalendarWidget> {
  DateTime today = DateTime.now();
  void SelectDay(DateTime day , DateTime foucsedDay) {
    setState(() {
      today = day ;
    });
  }


  late final ValueNotifier<List> selectedEvents ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400)
            ),
            child: TableCalendar(
              availableGestures: AvailableGestures.horizontalSwipe,
              calendarStyle: CalendarStyle(
                  weekendTextStyle:GoogleFonts.cairo(fontWeight: FontWeight.w600) ,
                  defaultTextStyle: GoogleFonts.cairo(fontWeight: FontWeight.w600),
                  selectedTextStyle:GoogleFonts.cairo(color: Colors.white,fontWeight: FontWeight.w600),
                  todayTextStyle:GoogleFonts.cairo(fontWeight: FontWeight.w600) ,
                  defaultDecoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  holidayDecoration:BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  disabledDecoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  markerDecoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  outsideDecoration:  BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  rangeEndDecoration:  BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  rangeStartDecoration:  BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  rowDecoration:  BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  withinRangeDecoration:  BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  weekendDecoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      shape: BoxShape.circle,
                  ),
                  cellMargin: EdgeInsets.symmetric(horizontal: 2.w)
              ),

              headerStyle: HeaderStyle(formatButtonVisible: false,
                titleTextStyle: GoogleFonts.cairo(fontWeight: FontWeight.w500,fontSize: 15.sp),
                titleCentered: true
              ),
              focusedDay: today,
              selectedDayPredicate: (day) =>isSameDay(day,today),
              firstDay: DateTime.utc(2023,1,1),
              lastDay: DateTime.utc(2023,12,31),
              rowHeight: MediaQuery.of(context).size.height*0.05,
               onDaySelected: SelectDay,


            ),
          ),
        )
      ],
    );
  }
}