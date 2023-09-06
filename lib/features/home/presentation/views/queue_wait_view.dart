import 'package:doctor_management_system/core/Widgets/custom_route_button.dart';
import 'package:doctor_management_system/core/constants/colors.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class QueueWaitView extends StatelessWidget {
  const QueueWaitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Column(
                  children: [
                    Row(
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
                                  ]),
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.only(right: 2.w),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                              ))),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text("قائمة الانتظار",
                            style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 3.h,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 4.h,
                        ),
                      ],
                    ),
                    Text("أهلاً بك في قائمة الانتظار خاصتنا",
                        style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 2.h,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 25.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.blueGrey.withOpacity(0.5),
                  border: Border.all(color: Colors.transparent)),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("أمامك عدد:", style: GoogleFonts.cairo(fontSize: 3.h)),
                  SizedBox(
                    height: 2.h,
                  ),
                  RichText(
                      textDirection: TextDirection.rtl,
                      text: TextSpan(children: [
                        TextSpan(
                            text: " 5 ",
                            style: GoogleFonts.cairo(
                                fontSize: 4.h,
                                color: AppColors.lightBlue,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: " مرضى ",
                            style: GoogleFonts.cairo(
                                fontSize: 4.h, color: Colors.black)),
                      ])),
                ],
              )),
            ),
            const Spacer(),
            BasicButtonRoute(
                route: (context) => const MyDatesView(),
                color: Colors.white,
                textColor: AppColors.lightBlue,
                textSt: "العودة الى الصفحة الرئيسية",
                borderColor: AppColors.lightBlue)
          ],
        ),
      ))),
    );
  }
}
