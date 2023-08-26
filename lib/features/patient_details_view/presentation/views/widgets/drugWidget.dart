import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DrugWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final String drugs;
  final String manyTimes;

  DrugWidget({
    required this.imagePath,
    required this.text,
    required this.drugs,
    required this.manyTimes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.blueGrey.withOpacity(0.3),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.all(2.h),
            child: Image.asset(
              height: 6.h,
              fit: BoxFit.fill,
              imagePath,
            ),
          ),
          SizedBox(width: 10),
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
                        text,
                        style: GoogleFonts.cairo(fontSize: 1.8.h, color: Colors.grey),
                      ),
                      SizedBox(width: 6.w,),
                      Text(
                        "$manyTimes",
                        style: GoogleFonts.cairo(fontSize: 1.7.h, color: Colors.grey),
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(1.0.h),
                  child: Text(
                    textDirection: TextDirection.ltr,
                    drugs,
                    style: GoogleFonts.cairo(fontSize: 2.h, fontWeight: FontWeight.bold),
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
