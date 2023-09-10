import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/Widgets/custom_route_button.dart';
import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/features/auth/presentation/views/login_view.dart';
import 'package:doctor_management_system/features/booking/presentation/views/widgets/patient_details.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/appointment_confirm_view.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/success_confirm_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
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
  int patientNum = 2;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
                              )
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(right: 2.w),
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
                            "ابدأ بملئ بياناتك",
                            style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 3.h,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "قمت بملئ بياناتك بالفعل؟ ",
                                  style: GoogleFonts.cairo(
                                      color: Colors.black, fontSize: 2.h),
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
                                  text: "تخطي",
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
                  BasicTextFormField(text: "اسم ولي الأمر"),
                  BasicTextFormField(text: "كلمة السر"),
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
                              visualDensity:
                                  const VisualDensity(horizontal: -4),
                              value: 1,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              },
                            ),
                            Text("مريض واحد", style: GoogleFonts.cairo()),
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
                              "أكثر من مريض",
                              style: GoogleFonts.cairo(fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (selectedOption == 1) const PatientDetails(),
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
                              itemBuilder: (context, index) => PatientDetails(
                                  bgColor: AppColors.lightBlue.withOpacity(0.1),
                                  isSingle: false),
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 3.h),
                              itemCount: patientNum),
                        ),
                        SizedBox(height: 3.h),
                        InkWell(
                          onTap: () {
                            setState(() {
                              patientNum++;
                            });
                          },
                          child: Container(
                            width: 20.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.lightBlue)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              child: Row(children: [
                                Icon(Icons.add,
                                    color: AppColors.lightBlue, size: 3.h),
                                Text("   اضافة مريض اخر",
                                    style: GoogleFonts.cairo(
                                        fontSize: 2.h,
                                        color: AppColors.lightBlue)),
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(height: 3.h),
                        BasicTextFormField(text: "رقم التيليفون"),
                      ],
                    ),
                  SizedBox(height: 3.h),
                  SizedBox(height: 5.h),
                  BasicButtonRoute(
                    route: (context) => SuccessConfirmView(
                      buttonRoute2: (context) => const MyDatesView(),
                      buttonRoute1: (context) => const AppointmentConfirmView(),
                    ),
                    color: AppColors.lightBlue,
                    textColor: Colors.white,
                    text: "حجز",
                    borderColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
