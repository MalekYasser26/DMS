import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppointmentDetailsView extends StatelessWidget {
  const AppointmentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal : 6.w, vertical: 2.h),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffDFDFDF))),
                  child: Column(children: [
                    Padding(
                      padding:  EdgeInsets.only(top:3.h, bottom: 2.h),
                      child: Image.asset(
                        "assets/images/confirm.png",
                        width: 25.w,
                      ),
                    ),
                    Text(
                      locale.bookingSuccess,
                      style: GoogleFonts.cairo(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      endIndent: 20,
                      indent: 20,
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.positionInWaitingQueue,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "8",
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E1E1E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.patientName,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "احمد خالد حسن",
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E1E1E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.patientNum,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "23",
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E1E1E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.firstTime,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            locale.check,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E1E1E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.bookingDate,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text(
                              "21 Aug, Mon - 09:20 Am",
                              style: GoogleFonts.cairo(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff1E1E1E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(4.w),
                      child: Row(
                        children: [
                          Text(
                            locale.clinicAddress,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                color: Color(0xff8F8E94),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "147 النزهة,ش المطار",
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E1E1E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        locale.comeEarly,
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff4DC143),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 2.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyDatesView()));
                  },
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xff159BAD)),
                    child: Center(
                      child: Text(
                        locale.myDates,
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
                        MaterialPageRoute(
                            builder: (context) => const MyDatesView()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}