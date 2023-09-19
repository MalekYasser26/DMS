import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:doctor_management_system/core/constants/permanent_data.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PatientDetails extends StatefulWidget {
  final bool isSingle;
  final Function removePatient;
  const PatientDetails(
      {Key? key, this.isSingle = false, required this.removePatient})
      : super(key: key);

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final preferenceService = getPreferenceService(context);
    return Stack(children: [
      Container(
        color: widget.isSingle
            ? Colors.transparent
            : AppColors.lightBlue.withOpacity(0.1),
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
              if (widget.isSingle == true)
                BasicTextFormField(
                  text: locale.phoneNum,
                  isNumbers: true,
                ),
            ],
          ),
        ),
      ),
      if (widget.isSingle == false)
        preferenceService.isEn()
            ? Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.removePatient();
                    });
                  },
                  icon: const Icon(Icons.remove_circle_outline),
                ),
              )
            : Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.removePatient();
                    });
                  },
                  icon: const Icon(Icons.remove_circle_outline),
                ),
              ),
    ]);
  }
}
