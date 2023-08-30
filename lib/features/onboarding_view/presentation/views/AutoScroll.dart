import 'dart:async';

import 'package:doctor_management_system/features/doctor_login/presentation/views/doctor_login_view.dart';
import 'package:doctor_management_system/features/home_view/presentation/views/home_view.dart';
import 'package:doctor_management_system/features/login_view/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/onboarding_view/presentation/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AutoScrollView extends StatefulWidget {
   AutoScrollView({Key? key,required this.pagesController, required this.currentIndex}) : super(key: key);
  final pagesController ;
  int currentIndex ;
  @override
  State<AutoScrollView> createState() => _AutoScrollViewState();
}

class _AutoScrollViewState extends State<AutoScrollView> {

  void initState() {
    super.initState();
    startAutoScroll();
  }
  void startAutoScroll() {
    Timer.periodic(Duration(milliseconds: 2500), (timer) {
      if (widget.currentIndex < boardingItems.length - 1) {
        widget.pagesController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        widget.pagesController.animateToPage(
          0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: NeverScrollableScrollPhysics(),
      controller: widget.pagesController,
      itemCount: boardingItems.length,
      onPageChanged: (index){
        setState(() {
          widget.currentIndex = index;

        });
        if (index ==2 ){
          Future.delayed(Duration(milliseconds: 1500),() => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView() ))) ;

        }
      },
      itemBuilder: (context,index){
        return Stack(
          alignment: Alignment.center,
          children:
          [
            Image.asset(
              boardingItems[index].image,fit:BoxFit.fill ,width: double.infinity.w,),

          ],
        );
      },
    );

  }
}
