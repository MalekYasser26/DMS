import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class NotesConfirmView extends StatelessWidget {
  final WidgetBuilder buttonRoute2, buttonRoute1;
  final String text, subText, buttonTxt;

  const NotesConfirmView(
      {Key? key,
      required this.buttonRoute2,
      required this.buttonRoute1,
      this.text = "تم اضافة الملاحظة بنجاح",
      this.subText = "شكرا على استخدامك لنا , نتمنى لك\nالشفاء العاجل",
      this.buttonTxt = "العودة الى صفحة المريض"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset(
                    "assets/images/confirm.png",
                    width: 35.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: buttonRoute1,
                          ));
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
                                  color: Color(0xffFFFFFF), fontSize: 16)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: buttonRoute2,
                          ));
                    },
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff159BAD)),
                      ),
                      child: Center(
                        child: Text(
                          "العودة الى الصفحة الرئيسية",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  color: Color(0xff159BAD), fontSize: 16)),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "اذا كان لديك اي استفسار يرجى الاتصال على ",
                        style: GoogleFonts.cairo(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "00227751003",
                          style: GoogleFonts.cairo(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4DC143)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
