import 'package:doctor_management_system/features/home_view/presentation/views/home_view.dart';
import 'package:doctor_management_system/features/register_view/presentation/views/widgets/confirm_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({Key? key}) : super(key: key);
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
                  SizedBox(height: 10.h,),
                  Image.asset("assets/images/confirm.png",width: 35.w,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("تم الحجز بنجاح",
                      style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                          )
                      ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("شكرا على استخدامك لنا , نتمنى لك\nالشفاء العاجل",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                              color: Color(0xff8F8E94)
                            )
                        ),),
                    ],
                  ),
                  SizedBox(height:8.h),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const DetailsView() ,));
                    },
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff159BAD)
                      ),
                      child: Center(
                        child: Text("عرض تفاصيل الحجز",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 16
                              )
                          ),),
                      ),
                    ),
                  ),
                  SizedBox(height:2.h),
                  GestureDetector(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView(),));
                    },
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff159BAD)),
                      ),
                      child: Center(
                        child: Text("العودة الى الصفحة الرئيسية",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  color: Color(0xff159BAD),
                                  fontSize: 16
                              )
                          ),),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("اذا كان لديك اي استفسار يرجى الاتصال على ",
                        style:GoogleFonts.cairo(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff000000)
                        ),),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Text("00227751003",
                          style:GoogleFonts.cairo(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4DC143)
                          ),),
                      ),
                    ],
                  )

              ],),
            ),
          ),
        ),
      ),
    );
  }
}
