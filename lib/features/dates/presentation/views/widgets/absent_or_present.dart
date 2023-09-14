import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AbsentOrPresent extends StatelessWidget {
  final bool isAbsent;
  final double h, w;

  const AbsentOrPresent(
      {Key? key, required this.isAbsent, required this.h, required this.w})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAbsent
        ? Container(
            decoration: BoxDecoration(
              color: AppColors.golden.withOpacity(0.3),
            ),
            height: h,
            width: w,
            child: Center(
              child: Text(
                getL10n(context).present,
                style: GoogleFonts.cairo(
                  color: AppColors.golden,
                  fontSize: 2.3.h,
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: AppColors.red.withOpacity(0.3),
            ),
            height: 4.h,
            width: 8.h,
            child: Center(
              child: Text(
                getL10n(context).absent,
                style: GoogleFonts.cairo(
                  color: AppColors.red,
                  fontSize: 2.3.h,
                ),
              ),
            ),
          );
  }
}
