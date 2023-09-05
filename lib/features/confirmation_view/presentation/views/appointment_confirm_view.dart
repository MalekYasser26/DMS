import 'package:doctor_management_system/features/dates_view/presentation/views/my_dates_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class AppointmentConfirmView extends StatelessWidget {
  const AppointmentConfirmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 82.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color:const Color(0xffDFDFDF) )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children:[
                       Padding(
                         padding: const EdgeInsets.only(top: 23.0,bottom: 8),
                         child: Image.asset("assets/images/confirm.png",width: 25.w,),
                       ),
                          Text("تم الحجز بنجاح",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                            )
                          ),),
                         const Divider(thickness: 1,
                         endIndent: 20,indent: 20,),
                          Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: Row(
                              children: [
                                Text("الترتيب في قائمة الانتظار",
                                style: GoogleFonts.cairo(
                                  textStyle: const TextStyle(
                                    color: Color(0xff8F8E94),
                                    fontSize: 16
                                  )
                                ),),
                                const Spacer(),
                                Text("8",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff1E1E1E),
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                              ],
                          ),
                           ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text("اسم المريض",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          color: Color(0xff8F8E94),
                                          fontSize: 16
                                      )
                                  ),),
                                const Spacer(),
                                Text("احمد خالد حسن",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff1E1E1E),
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text("رقم المريض",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          color: Color(0xff8F8E94),
                                          fontSize: 16
                                      )
                                  ),),
                                const Spacer(),
                                Text("23",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff1E1E1E),
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text("اول مره؟",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          color: Color(0xff8F8E94),
                                          fontSize: 16
                                      )
                                  ),),
                                const Spacer(),
                                Text("كشف",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff1E1E1E),
                                          fontWeight: FontWeight.w600
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text("تاريخ الحجز",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          color: Color(0xff8F8E94),
                                          fontSize: 16
                                      )
                                  ),),
                                const Spacer(),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text("21 Aug, Mon - 09:20 Am",
                                    style: GoogleFonts.cairo(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff1E1E1E),
                                            fontWeight: FontWeight.w600
                                        )
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Text("عنوان العيادة",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          color: Color(0xff8F8E94),
                                          fontSize: 16
                                      )
                                  ),),
                                const Spacer(),
                                Text("147 النزهة,ش المطار",
                                  style: GoogleFonts.cairo(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff1E1E1E),
                                          fontWeight: FontWeight.bold
                                      )
                                  ),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("حاول ان تاتي 30 دقيقة مبكرا",
                              style: GoogleFonts.cairo(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff4DC143),
                                      fontWeight: FontWeight.w400
                                  )
                              ),),
                          ),
                        ]
                      ),
                    ),
                    ),
                  SizedBox(height:2.h),
                  GestureDetector(
                    onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDatesView(),));
                    },
                    child: Container(
                      height: 7.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xff159BAD)
                      ),
                      child: Center(
                        child: Text("مواعيدي",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDatesView(),));
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
               ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
