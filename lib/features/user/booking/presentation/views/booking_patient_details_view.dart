import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/core/widgets/basic_button_route.dart';
import 'package:doctor_management_system/features/auth/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/two_buttons_confirm_view.dart';
import 'package:doctor_management_system/features/user/appointment_details/presentation/views/appointment_details_view.dart';
import 'package:doctor_management_system/features/user/booking/presentation/views/widgets/patient_details.dart';
import 'package:doctor_management_system/features/user/dates/presentation/views/my_dates_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BookingPatientDetailsView extends StatefulWidget {
  const BookingPatientDetailsView({Key? key}) : super(key: key);

  @override
  State<BookingPatientDetailsView> createState() =>
      _BookingPatientDetailsViewState();
}

class _BookingPatientDetailsViewState extends State<BookingPatientDetailsView> {
  int selectedOption = 1;
  List<PatientDetails> patientsNumList = [
    PatientDetails(
      removePatient: () {},
    ),
    PatientDetails(removePatient: () {}),
  ];

  void addNewPatient() {
    patientsNumList.add(PatientDetails(removePatient: () {
      removePatient(patientsNumList.length - 1);
    }));
    setState(() {});
  }

  void removePatient(int index) {
    patientsNumList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final preferenceService = getPreferenceService(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 5.h,
                        width: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 5.0,
                              spreadRadius: 1,
                              offset: const Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: preferenceService.isEn()
                                ? EdgeInsets.only(left: 2.w)
                                : EdgeInsets.only(right: 2.w),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locale.startFillData,
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: locale.alreadyFillData,
                                style: GoogleFonts.cairo(
                                  color: Colors.black,
                                  fontSize: 2.h,
                                ),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginView(
                                            route: (context) =>
                                                const MyDatesView(),
                                          ),
                                        ),
                                      ),
                                text: locale.skip,
                                style: GoogleFonts.cairo(
                                  color: AppColors.lightBlue,
                                  fontSize: 2.h,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                BasicTextFormField(text: locale.guardianName, isText: true),
                BasicTextFormField(text: locale.password, isPass: true),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Radio<int>(
                            activeColor: AppColors.lightBlue,
                            visualDensity: const VisualDensity(horizontal: -4),
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            locale.onePatient,
                            style: GoogleFonts.cairo(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Radio<int>(
                            activeColor: AppColors.lightBlue,
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4),
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value!;
                              });
                            },
                          ),
                          Text(
                            locale.moreThanPatient,
                            style: GoogleFonts.cairo(fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (selectedOption == 1)
                  PatientDetails(
                    removePatient: () {},
                    isSingle: true,
                  ),
                if (selectedOption == 2)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: ListView.separated(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              patientsNumList[index],
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 3.h),
                          itemCount: patientsNumList.length,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      InkWell(
                        onTap: addNewPatient,
                        child: FractionallySizedBox(
                          widthFactor: 0.6,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.lightBlue),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: AppColors.lightBlue,
                                    size: 3.h,
                                  ),
                                  Expanded(
                                    child: Text(
                                      locale.addPatient,
                                      style: GoogleFonts.cairo(
                                        fontSize: 2.h,
                                        color: AppColors.lightBlue,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      BasicTextFormField(
                          text: locale.phoneNum, isNumbers: true),
                    ],
                  ),
                SizedBox(height: 3.h),
                SizedBox(height: 5.h),
                BasicButtonRoute(
                  route: (context) => TwoButtonsConfirmView(
                    buttonRoute2: (context) => const MyDatesView(),
                    buttonRoute1: (context) => const AppointmentDetailsView(),
                    text: locale.bookingSuccess,
                    buttonTxt: locale.viewBookingDetails,
                    subText: locale.thxUsing,
                  ),
                  color: AppColors.lightBlue,
                  textColor: Colors.white,
                  text: locale.book,
                  borderColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
