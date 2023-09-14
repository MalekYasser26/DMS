import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/core/constants/assets/assets_data.dart';
import 'package:doctor_management_system/core/widgets/basic_button_route.dart';
import 'package:doctor_management_system/core/widgets/navigator_box.dart';
import 'package:doctor_management_system/features/auth/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/booking/presentation/views/booking_intro_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:doctor_management_system/features/home/presentation/views/queue_wait_view.dart';
import 'package:doctor_management_system/features/home/presentation/views/rate_service_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AssetsData.homeBG,
              fit: BoxFit.fill,
              width: double.infinity.w,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    SizedBox(height: 1.h),
                    Text(
                      "تقدم العيادة العديد \nمن التخصصات في كثير \nمن المجالاتا",
                      style: GoogleFonts.cairo(
                          color: Colors.white,
                          fontSize: 4.h,
                          fontWeight: FontWeight.bold),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 42.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: NavigatorBox(
                            text: "قائمة الانتظار",
                            height: 15.h,
                            fontSize: 2.8.h,
                            borderColor: Colors.white,
                            textColor: Colors.white,
                            route: (context) => LoginView(
                              route: (context) => const QueueWaitView(),
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: NavigatorBox(
                            text: "تقييم الخدمة",
                            height: 15.h,
                            fontSize: 2.8.h,
                            borderColor: Colors.white,
                            textColor: Colors.white,
                            route: (context) => LoginView(
                              route: (context) => const RateSeviceView(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    BasicButtonRoute(
                      route: (context) =>
                          LoginView(route: (context) => const MyDatesView()),
                      color: AppColors.lightBlue,
                      textColor: Colors.white,
                      text: "تسجيل دخول",
                      borderColor: Colors.transparent,
                      textSize: 2.h,
                    ),
                    SizedBox(height: 2.h),
                    BasicButtonRoute(
                      route: (context) => const BookingIntroView(),
                      color: Colors.white,
                      textColor: AppColors.lightBlue,
                      text: "حجز سريع",
                      borderColor: Colors.transparent,
                      textSize: 2.h,
                    ),
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
