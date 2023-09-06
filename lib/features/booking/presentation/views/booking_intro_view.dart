import 'package:doctor_management_system/core/Widgets/box_container.dart';
import 'package:doctor_management_system/core/Widgets/custom_route_button.dart';
import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/constants/colors.dart';
import 'package:doctor_management_system/data/booking_view_temp_data.dart';
import 'package:doctor_management_system/features/auth/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/booking/presentation/views/booking_patient_details_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:doctor_management_system/features/home/presentation/views/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BookingIntroView extends StatefulWidget {
  const BookingIntroView({Key? key}) : super(key: key);

  @override
  State<BookingIntroView> createState() => _BookingIntroViewState();
}

class _BookingIntroViewState extends State<BookingIntroView> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          height: 5.h,
                          width: 5.h,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ابدأ بملئ بياناتك",
                            style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 3.h,
                                fontWeight: FontWeight.bold)),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "قمت بملئ بياناتك بالفعل؟ ",
                                style: GoogleFonts.cairo(
                                    color: Colors.black, fontSize: 2.h)),
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginView(
                                            route: (context) =>
                                                const MyDatesView()),
                                      )),
                                text: "تخطي",
                                style: GoogleFonts.cairo(
                                    color: AppColors.lightBlue,
                                    fontSize: 2.h,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(
                        child: BoxWidget(
                      text: "كشف",
                      height: 15.h,
                      fontSize: 2.8.h,
                      borderColor: AppColors.lightBlue,
                      textColor: AppColors.lightBlue,
                      route: (context) => const HomeView(),
                      weight: FontWeight.bold,
                    )),
                    SizedBox(
                      width: 2.h,
                    ),
                    Expanded(
                        child: BoxWidget(
                      text: "استشارة",
                      height: 15.h,
                      fontSize: 2.8.h,
                      borderColor: Colors.grey.shade600,
                      textColor: Colors.black,
                      route: (context) => const HomeView(),
                    )),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("اختر العيادة",
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        fontSize: 2.h,
                        color: Colors.black)),
                DropDownMenu(
                    dropList: clinicName, icon: Icons.location_on_outlined),
                SizedBox(
                  height: 1.h,
                ),
                Text("اختر التاريخ",
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        fontSize: 2.h,
                        color: Colors.black)),
                DropDownMenu(dropList: dates, icon: Icons.calendar_month),
                SizedBox(
                  height: 1.h,
                ),
                Text("اختر الوقت",
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        fontSize: 2.h,
                        color: Colors.black)),
                DropDownMenu(
                    dropList: timeStamps,
                    icon: Icons.watch_later_outlined,
                    textDirection: TextDirection.ltr),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: BasicButtonRoute(
                      route: (context) => const BookingPatientDetails(),
                      color: AppColors.lightBlue,
                      textColor: Colors.white,
                      textSt: "التالي",
                      borderColor: Colors.transparent),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
