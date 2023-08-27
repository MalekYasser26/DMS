import 'package:doctor_management_system/core/RepeatedWidgets/BoxWidget.dart';
import 'package:doctor_management_system/core/RepeatedWidgets/ButtonWidget.dart';
import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/features/booking_view/presentation/views/booking_view2.dart';
import 'package:doctor_management_system/features/home_view/presentation/views/home_view.dart';
import 'package:doctor_management_system/features/login_view/presentation/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/RepeatedWidgets/dropMenu.dart';
import '../../../../core/utils/Constants.dart';

class BookingView1 extends StatefulWidget {
  const BookingView1({Key? key}) : super(key: key);

  @override
  State<BookingView1> createState() => _BookingView1State();
}

class _BookingView1State extends State<BookingView1> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal : 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          height: 5.h,
                          width: 5.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(.2),
                                  blurRadius: 5.0,
                                  spreadRadius: 1,
                                  offset: const Offset(
                                    2.0,
                                    2.0,
                                  ),
                                )
                              ]
                          ),
                          child: Center(child: Padding(
                            padding:  EdgeInsets.only(right: 2.w),
                            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                          ))),
                    ),
                    SizedBox(width: 4.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ابدأ بملئ بياناتك",style: GoogleFonts.cairo(color: Colors.black,fontSize: 3.h,fontWeight: FontWeight.bold)),
                        RichText( text:TextSpan(
                            children: [
                              TextSpan(text: "قمت بملئ بياناتك بالفعل؟ ",style: GoogleFonts.cairo(
                                  color: Colors.black,fontSize: 2.h)),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),)) ,
                                  text: "تخطي",style: GoogleFonts.cairo(
                                  color: AppColors.lightBlue,fontSize: 2.h,fontWeight: FontWeight.bold)
                              ),

                            ]
                        ),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(child: BoxWidget(text: "كشف", height: 15.h, fontSize: 2.8.h, borderColor: AppColors.lightBlue, textColor: AppColors.lightBlue, route: (context) => HomeView(),weight: FontWeight.bold,)),
                    SizedBox(width: 2.h,),
                    Expanded(child: BoxWidget(text: "استشارة", height: 15.h, fontSize: 2.8.h, borderColor: Colors.grey.shade600, textColor: Colors.black, route: (context) => HomeView(),)),


                  ],
                ),
                SizedBox(height: 1.h,),
                Text("اختر العيادة",style: GoogleFonts.cairo(fontWeight: FontWeight.w600,fontSize: 2.h,color: Colors.black)),
                DropMenu(dropList: clinicName,iconDrop: Icons.location_on_outlined),
                SizedBox(height: 1.h,),
                Text("اختر التاريخ",style: GoogleFonts.cairo(fontWeight: FontWeight.w600,fontSize: 2.h,color: Colors.black)),
                DropMenu(dropList: dates,iconDrop: Icons.calendar_month),
                SizedBox(height: 1.h,),
                Text("اختر الوقت",style: GoogleFonts.cairo(fontWeight: FontWeight.w600,fontSize: 2.h,color: Colors.black)),
                DropMenu(dropList: timeStamps,iconDrop: Icons.watch_later_outlined,dir: TextDirection.ltr),
                Spacer(),
                Padding(padding:  EdgeInsets.symmetric(vertical: 2.h),
                  child: BasicButtonRoute(route:(context) => BookingView2(), color: AppColors.lightBlue, Textcolor: Colors.white, TextSt: "التالي", borderColor: Colors.transparent),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
