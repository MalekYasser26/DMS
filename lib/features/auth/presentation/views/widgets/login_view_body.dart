import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/features/doctor/clinic_choice/presentation/views/clinic_choice_view.dart';
import 'package:doctor_management_system/features/user/booking/presentation/views/booking_intro_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class LoginViewBody extends StatelessWidget {
  final WidgetBuilder route;

  const LoginViewBody({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(6.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              blurRadius: 5.0,
                              spreadRadius: 1,
                              offset: const Offset(2.0, 2.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: !context.watch<PreferenceService>().isEn()
                              ? EdgeInsets.only(right: 2.w)
                              : EdgeInsets.only(left: 2.w),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locale.greeting,
                          style: GoogleFonts.cairo(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff171717)),
                        ),
                        Text(
                          locale.fillData,
                          style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color(0xff171717)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                BasicTextFormField(
                  text: locale.id,
                  isNumbers: true,
                ),
                BasicTextFormField(
                  text: locale.password,
                  isPass: true,
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onLongPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ClinicChoiceView(),
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: route,
                      )),
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xff159BAD)),
                    child: Center(
                      child: Text(
                        locale.login,
                        style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      locale.noAccount,
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BookingIntroView(),
                            ));
                      },
                      child: Text(
                        locale.registerNow,
                        style: GoogleFonts.cairo(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4DC143),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}