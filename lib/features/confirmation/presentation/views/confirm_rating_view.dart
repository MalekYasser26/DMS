import 'package:doctor_management_system/core/constants/assets/assets_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ConfirmRatingView extends StatelessWidget {
  final Widget route;
  final String text;

  const ConfirmRatingView(
      {Key? key, required this.route, this.text = "تم الحجز بنجاح"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Image.asset(
                 AssetsImages.confirm,
                  width: 35.w,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: GoogleFonts.cairo(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text(
                  "شكرا لك على تقييمك لنا ، نتمنى لك الشفاء\n العاجل",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff8F8E94),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => route));
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
                            color: Color(0xff159BAD),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "إذا كان لديك أي استفسار يرجى الاتصال على ",
                      style: GoogleFonts.cairo(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "00227751003",
                        style: GoogleFonts.cairo(
                          fontSize: 12,
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
