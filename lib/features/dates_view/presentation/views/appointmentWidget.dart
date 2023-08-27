import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/features/dates_view/presentation/views/AbsentPresent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppointmentWidget extends StatelessWidget {
   AppointmentWidget({Key? key,required this.name,required this.date, required this.address , required this.firstTime,required this.isAbsent , required this.isNext}) : super(key: key);
  String name , date , address ,firstTime ;
  bool isAbsent ;
  bool isNext ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300)
      ),
      child: Padding(
        padding:  EdgeInsets.all(2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$name",style: GoogleFonts.cairo(color: AppColors.blueNames,fontSize: 3.h)),
               isNext ==true ? AbsentPresent(isAbsent: isAbsent,) : Text("")
              ],
            ),
            RichText( text:TextSpan(
                children: [
                  TextSpan(text: " اول مرة ؟   ",style: GoogleFonts.cairo(
                      color: Colors.grey,fontSize: 2.h)),
                  TextSpan(text: "$firstTime",style: GoogleFonts.cairo(
                      color: Colors.black,fontSize: 2.h)),


                ]
            ),),
            SizedBox(height: 1.h,),
            RichText( text:TextSpan(
                children: [
                  TextSpan(text: "التاريخ  ",style: GoogleFonts.cairo(
                      color: Colors.grey,fontSize: 2.h)),
                  TextSpan(text: "$date",style: GoogleFonts.cairo(
                      color: Colors.black,fontSize: 2.h)),


                ]
            ),),
            SizedBox(height: 1.h,),
            RichText( text:TextSpan(
                children: [
                  TextSpan(text: "عنوان العيادة   ",style: GoogleFonts.cairo(
                      color: Colors.grey,fontSize: 2.h)),
                  TextSpan(text: "$address",style: GoogleFonts.cairo(
                      color: Colors.black,fontSize: 2.h)),


                ]
            ),),
            SizedBox(height: 1.h,),

          ],
        ),
      ),
    );
  }
}
