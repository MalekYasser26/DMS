import 'dart:async';
import 'package:doctor_management_system/features/intro/data/models/onboarding_model.dart';
import 'package:doctor_management_system/features/user/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AutoScroll extends StatefulWidget {
  final PageController pagesController;
  final int currentIndex = 0;

  const AutoScroll({Key? key, required this.pagesController}) : super(key: key);

  @override
  State<AutoScroll> createState() => _AutoScrollState();
}

class _AutoScrollState extends State<AutoScroll> {
  @override
  void initState() {
    super.initState();
    startAutoScroll();
  }

  void startAutoScroll() {
    Timer.periodic(const Duration(milliseconds: 2500), (timer) {
      if (widget.currentIndex < boardingItems.length - 1) {
        widget.pagesController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        widget.pagesController.animateToPage(
          0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: widget.pagesController,
      itemCount: boardingItems.length,
      onPageChanged: (index) {
        if (index == 2) {
          Future.delayed(
            const Duration(milliseconds: 1500),
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            ),
          );
        }
      },
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              boardingItems[index].image,
              fit: BoxFit.fill,
              width: double.infinity.w,
            ),
          ],
        );
      },
    );
  }
}
