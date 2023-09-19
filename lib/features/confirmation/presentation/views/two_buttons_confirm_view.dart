import 'package:doctor_management_system/core/constants/assets/assets_images.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class TwoButtonsConfirmView extends StatelessWidget {
  final WidgetBuilder buttonRoute2, buttonRoute1;
  final String text, subText, buttonTxt;

  const TwoButtonsConfirmView(
      {Key? key,
        required this.buttonRoute2,
        required this.buttonRoute1,
        this.text = "",
        this.subText = "",
        this.buttonTxt = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(5.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Image.asset(
                  AssetsImages.confirm,
                  width: 35.w,
                ),
                Text(
                  text,
                  style: GoogleFonts.cairo(
                    textStyle:  TextStyle(
                        fontSize: 2.5.h, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 1.h,),
                Text(
                  softWrap: true,
                  subText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(
                    textStyle:  TextStyle(
                      fontSize: 2.h,
                      color: const Color(0xff8F8E94),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: buttonRoute1),
                    );
                  },
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xff159BAD)),
                    child: Center(
                      child: Text(
                        buttonTxt,
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: buttonRoute2),
                    );
                  },
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff159BAD)),
                    ),
                    child: Center(
                      child: Text(
                        locale.returnHome,
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            color: Color(0xff159BAD),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                RichText(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: locale.inquiries,
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text: "00227751003",
                        style: GoogleFonts.cairo(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4DC143),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}