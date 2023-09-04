import 'package:doctor_management_system/core/RepeatedWidgets/BoxWidget.dart';
import 'package:doctor_management_system/core/RepeatedWidgets/ButtonWidget.dart';
import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/core/utils/assets.dart';
import 'package:doctor_management_system/features/booking_view/presentation/views/booking_view1.dart';
import 'package:doctor_management_system/features/dates_view/presentation/views/myDates_view.dart';
import 'package:doctor_management_system/features/login_view/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/queueWait_view/presentation/views/queueWait_view.dart';
import 'package:doctor_management_system/features/rateService_view/presentation/views/rateService_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children:
          [
            Image.asset(
             AssetsData.homeBG,fit:BoxFit.fill ,width: double.infinity.w,),
            Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    SizedBox(height: 1.h,),
                    Text("تقدم العيادة العديد \nمن التخصصات في كثير \nمن المجالاتا",
                        style: GoogleFonts.cairo(color: Colors.white,fontSize: 4.h,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr,textAlign: TextAlign.center),
                    SizedBox(height: 42.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child:BoxWidget(text: "قائمة الانتظار", height: 15.h, fontSize: 2.8.h, borderColor: Colors.white, textColor: Colors.white, route: (context) => LoginView(route: (context) => QueueWaitView()))
                        ),
                        SizedBox(width : 4.w),
                        Expanded(
                            child:BoxWidget(text: "تقييم الخدمة", height: 15.h, fontSize: 2.8.h, borderColor: Colors.white, textColor: Colors.white, route: (context) => LoginView(route: (context) => RateSeviceView()))
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    BasicButtonRoute(route: (context) => LoginView(route: (context) => MyDatesView()), color: AppColors.lightBlue, Textcolor: Colors.white, TextSt: "تسجيل الدخول", borderColor: Colors.transparent,textSize: 2.h),
                    SizedBox(height: 2.h,),
                    BasicButtonRoute(route: (context) => BookingView1(), color:Colors.white , Textcolor: AppColors.lightBlue, TextSt: "حجز سريع", borderColor: Colors.transparent,textSize: 2.h),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
