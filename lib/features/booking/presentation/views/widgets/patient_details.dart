import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/data/patient_details_temp_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PatientDetails extends StatelessWidget {
  final Color bgColor;
  final bool isSingle;

  const PatientDetails(
      {Key? key, this.bgColor = Colors.transparent, this.isSingle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
        child: Column(
          children: [
            BasicTextFormField(text: "اسم المريض"),
            DropDownMenu(dropList: gender),
            BasicTextFormField(text: "عمر المريض"),
            if (isSingle == true) BasicTextFormField(text: "رقم التيليفون"),
          ],
        ),
      ),
    );
  }
}
