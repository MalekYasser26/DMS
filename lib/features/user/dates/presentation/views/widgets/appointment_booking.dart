import 'package:doctor_management_system/core/Widgets/absent_or_present.dart';
import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppointmentBooking extends StatelessWidget {
  final String name, date, address, firstTime;
  final bool isAbsent, isNext;

  const AppointmentBooking(
      {Key? key,
      required this.name,
      required this.date,
      required this.address,
      required this.firstTime,
      required this.isAbsent,
      required this.isNext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: GoogleFonts.cairo(
                    color: AppColors.blueNames,
                    fontSize: 2.5.h,
                  ),
                ),
                if (isNext == true)
                  AbsentOrPresent(
                    isAbsent: isAbsent,
                    h: 4.h,
                    w: 8.h,
                  ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " ${locale.firstTime}   ",
                    style: GoogleFonts.cairo(
                      color: Colors.grey,
                      fontSize: 2.h,
                    ),
                  ),
                  TextSpan(
                    text: firstTime,
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${locale.date}  ",
                    style: GoogleFonts.cairo(
                      color: Colors.grey,
                      fontSize: 2.h,
                    ),
                  ),
                  TextSpan(
                    text: date,
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${locale.clinicAddress}   ",
                    style: GoogleFonts.cairo(
                      color: Colors.grey,
                      fontSize: 2.h,
                    ),
                  ),
                  TextSpan(
                    text: address,
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
          ],
        ),
      ),
    );
  }
}
