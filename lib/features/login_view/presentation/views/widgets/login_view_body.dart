import 'package:doctor_management_system/core/RepeatedWidgets/BasicTextFF.dart';
import 'package:doctor_management_system/features/booking_view/presentation/views/PatientDetails.dart';
import 'package:doctor_management_system/features/booking_view/presentation/views/booking_view1.dart';
import 'package:doctor_management_system/features/dates_view/presentation/views/myDates_view.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/patientDetailsView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 4.h,
                        width: 8.w,
                        decoration:   BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 1, //extend the shadow
                              offset: const Offset(
                                2.0, // Move to right 5  horizontally
                                2.0, // Move to bottom 5 Vertically
                              ),
                            )
                          ],
                        ),
                        child:const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_back_ios,size: 16,),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w,),
                    Text("مرحبا بعودتك",
                      style:GoogleFonts.cairo(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff171717)
                      ),),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:40.0),
                      child: Text("قم بمليء بياناتك",
                      style: GoogleFonts.cairo(
                       fontWeight: FontWeight.w400,
                       fontSize: 14,
                       color: const Color(0xff171717)
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 5.h,),
                BasicTextFF(fftext: "رقم الهوية"),
                BasicTextFF(fftext: "كلمة السر"),
                SizedBox(height:10.h,),
                InkWell(
                  onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientDetailsView(),)),
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff159BAD)
                    ),
                    child: Center(
                      child: Text("تسجيل الدخول",
                      style: GoogleFonts.cairo(
                        textStyle: const TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16
                        )
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ليس لديك حساب؟",
              style:GoogleFonts.cairo(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000)
              ),),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BookingView1(),));
              },
              child: Text("سجل الان",
                style:GoogleFonts.cairo(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff4DC143)
                ),),
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
// Expanded(
// flex: 1,
// child: Padding(
// padding: const EdgeInsets.only(top: 2.0,bottom: 8),
// child: TextFormField(
// decoration: InputDecoration(
// isDense:true,
// border: const OutlineInputBorder(
// borderSide:BorderSide(color: Color(0xffDFDFDF))
// ),
// hintText: "ادخل كلمة السر",
// hintStyle: GoogleFonts.cairo(
// fontSize: 14,
// color: const Color(0xffA3A3A3)
// )
// ),
// ),
// ),
// ),
