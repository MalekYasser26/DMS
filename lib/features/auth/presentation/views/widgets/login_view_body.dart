import 'package:doctor_management_system/core/Widgets/basic_text_form_field.dart';
import 'package:doctor_management_system/core/services/preferred/localization.dart';
import 'package:doctor_management_system/features/booking/presentation/views/booking_intro_view.dart';
import 'package:doctor_management_system/features/clinic_choice/presentation/views/clinic_choice_view.dart';
import 'package:doctor_management_system/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class LoginViewBody extends StatelessWidget {
  final WidgetBuilder route;

  const LoginViewBody({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = S.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Row(
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
                      child:  Padding(
                        padding: context.watch<Localization>().isArabic()
                            ? const EdgeInsets.only(right: 8.0)
                            : const EdgeInsets.only(left: 8.0),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    locale.greeting,
                    style: GoogleFonts.cairo(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff171717)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: context.watch<Localization>().isArabic()
                        ? const EdgeInsets.only(right: 40.0)
                        : const EdgeInsets.only(left: 40.0),
                    child: Text(
                      locale.fillData,
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xff171717)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.h),
              BasicTextFormField(text: locale.id),
              BasicTextFormField(text: locale.password),
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
              SizedBox(height: 30.h),
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
    );
  }
}
