import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/constants/permanent_data.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/core/services/shared/shared_services.dart';
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
    final locale = getL10n(context);
    return Stack(children: [
      Container(
        color: bgColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
          child: Column(
            children: [
              BasicTextFormField(text: locale.patientName),
              DropDownMenu(dropList: genderList(locale)),
              BasicTextFormField(
                text: locale.agePatient,
                isNumbers: true,
              ),
              if (isSingle == true)
                BasicTextFormField(
                  text: locale.phoneNum,
                  isNumbers: true,
                ),
            ],
          ),
        ),
      ),
      if (isSingle == false)
        getPreferenceService(context).isEn()?
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            onPressed: () {
              getSharedServices(context).removePatient();
            },
            icon: const Icon(Icons.remove_circle_outline),
          ),
        ):
        Positioned(
          top: 0,
          left: 0,
          child: IconButton(
            onPressed: () {
              getSharedServices(context).removePatient();
            },
            icon: const Icon(Icons.remove_circle_outline),
          ),
        ),
    ]);
  }
}
