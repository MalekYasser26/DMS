import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MedicalBoxInfo extends StatelessWidget {
  final String number, category, additionalSubText;
  final bool isBP;

  const MedicalBoxInfo({
    Key? key,
    required this.number,
    required this.category,
    required this.isBP,
    required this.additionalSubText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 2.w),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey.shade400)),
        height: 15.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              number,
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 3.h,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 1.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      category,
                      style: GoogleFonts.cairo(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  if (isBP == false) ...[
                    const Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.green,
                    ),
                    Text(
                      additionalSubText,
                      style: GoogleFonts.cairo(
                        color: AppColors.green,
                        fontSize: 1.5.h,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
