import 'package:doctor_management_system/features/patient_list/presentation/views/patient_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ClinicChoiceView extends StatelessWidget {
  const ClinicChoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Row(
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
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                            )
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      "قم باختيار العيادة",
                      style: GoogleFonts.cairo(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff171717)),
                    ),
                    const Spacer(),
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
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/logout.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 55.0),
                    child: Text(
                      "اختر العيادة المراد رؤية المرضى بها",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color(0xff171717),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.h),
              Image.asset("assets/images/clinic.png"),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 25, bottom: 8),
                child: Text(
                  "اختر العيادة",
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: const Color(0xff171717)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23.0, left: 23),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  height: 7.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffDFDFDF)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, left: 8),
                        child: Image.asset(
                          "assets/images/location.png",
                          height: 3.h,
                        ),
                      ),
                      Text(
                        "اختر المكان",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color(0xffA3A3A3),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xffA3A3A3),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PatientListView(),
                      )),
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xff159BAD)),
                    child: Center(
                      child: Text(
                        "عرض قائمة المرضى",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
