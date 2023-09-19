import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/features/intro/presentation/views/widgets/auto_scroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context) ;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            AutoScroll(
              pagesController: pageController,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 6.h),
                  Text(
                    locale.onBoardingText,
                    style: GoogleFonts.cairo(
                        color: Colors.white,
                        fontSize: 4.h,
                        fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12.5.h),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  pageController.nextPage(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.ease,
                                  );
                                },
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4.w),
                              InkWell(
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  pageController.previousPage(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ],
                          ),
                          SmoothPageIndicator(
                            textDirection: TextDirection.rtl,
                            controller: pageController,
                            count: 3,
                            axisDirection: Axis.horizontal,
                            effect: const SwapEffect(
                              spacing: 8.0,
                              radius: 1,
                              dotWidth: 25.0,
                              dotHeight: 8.0,
                              dotColor: Colors.grey,
                              activeDotColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 3.5.h),
                  SizedBox(height: 4.5.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
