import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/utils/Colors.dart';

class ExtraNotesWidget extends StatelessWidget {
  final String date;
  final String note;
  ExtraNotesWidget({
    required this.date,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.blueGrey.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal : 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textDirection: TextDirection.ltr,
                        date,
                        style: GoogleFonts.cairo(fontSize: 2.h, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(1.0.h),
                  child: Text(
                    note,
                    style: GoogleFonts.cairo(fontSize: 2.3.h, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
