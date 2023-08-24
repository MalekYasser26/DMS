import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AbsentPresent extends StatelessWidget {
   AbsentPresent({Key? key , required this.isAbsent}) : super(key: key);
  bool isAbsent;
  @override
  Widget build(BuildContext context) {
    return isAbsent ? Container(
      decoration: BoxDecoration(
        color: AppColors.golden.withOpacity(0.3)
      ),
      height: 4.h,
      width: 8.h,
      child: Center(child: Text("حاضر",style: GoogleFonts.cairo(color: AppColors.golden,fontSize: 2.3.h))),
    ) :  Container(
      decoration: BoxDecoration(
          color: AppColors.red.withOpacity(0.3)
      ),
      height: 4.h,
      width: 8.h,
      child: Center(child: Text("غائب",style: GoogleFonts.cairo(color: AppColors.red,fontSize: 2.3.h))),
    );
  }
}
