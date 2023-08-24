import 'package:doctor_management_system/core/RepeatedWidgets/BasicTextFF.dart';
import 'package:doctor_management_system/core/RepeatedWidgets/dropMenu.dart';
import 'package:doctor_management_system/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PatientDetails extends StatelessWidget {
   PatientDetails({Key? key, this.bgColor = Colors.transparent , this.isSingle = true}) : super(key: key);
  Color bgColor ;
  bool isSingle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal :2.h,vertical: 1.h),
        child: Column(
            children: [
              BasicTextFF(fftext: "اسم المريض"),
              DropMenu(dropList: gender),
              BasicTextFF(fftext: "عمر المريض"),
              if (isSingle==true)
              BasicTextFF(fftext: "رقم التيليفون"),

            ]),
      ),
    );
  }
}
