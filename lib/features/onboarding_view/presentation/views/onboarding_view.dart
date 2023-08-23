
import 'package:doctor_management_system/features/onboarding_view/presentation/views/AutoScroll.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/onboarding_model.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();
  int currentIndex = 0 ;

  @override


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children:<Widget> [
            AutoScrollView(currentIndex: currentIndex,pagesController: pageController),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 6.h,),
                  Text("تقدم العيادة العديد \nمن التخصصات في كثير من المجالاتا",
                      style: GoogleFonts.cairo(color: Colors.white,fontSize: 5.h,fontWeight: FontWeight.bold),textDirection: TextDirection.ltr,textAlign: TextAlign.center),
                  SizedBox(height: 12.5.h,),
                  const Spacer(),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                print(currentIndex);
                                pageController.previousPage(duration: Duration(milliseconds: 1000),
                                    curve: Curves.ease);
                              },
                              child: CircleAvatar(
                                child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black),

                              backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                               ),
                              onTap: () {
                                print(currentIndex);
                                pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.ease);
                              },
                            ),

                          ],
                        ),
                        SmoothPageIndicator(
                          textDirection:TextDirection.rtl ,
                          controller: pageController,
                          count:  3,
                          axisDirection: Axis.horizontal,
                          effect:  const SwapEffect(
                              spacing:  8.0,
                              radius: 1,
                              dotWidth:  25.0,
                              dotHeight:  8.0,
                              dotColor:Colors.grey,
                              activeDotColor: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:3.5.h,),
                  SizedBox(height: 4.5.h,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
