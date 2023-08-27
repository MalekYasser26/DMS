import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MedicalBoxInfo extends StatelessWidget {
   MedicalBoxInfo({Key? key, required this.number , required this.category,required this.isBP,required this.extraST}) : super(key: key);
  String number , category , extraST ;
  bool isBP ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left :2.w),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400)
      ),
      height: 11.h,
      width: 14.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$number",style: GoogleFonts.cairo(color: Colors.black,fontSize:3.h,fontWeight: FontWeight.bold)),
          Row(

            children: [
              Text("$category",style: GoogleFonts.cairo(color: Colors.grey,fontSize:1.8.h )),
              isBP ==false ?Icon(Icons.arrow_drop_down,color: AppColors.green,) : Text(""),
              isBP ==false ?Text("$extraST",style: GoogleFonts.cairo(color: AppColors.green,fontSize: 1.5.h),) : Text("")
            ],
          ),

        ],
      ),
    );
  }
}
