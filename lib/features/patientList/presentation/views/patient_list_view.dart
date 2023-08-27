import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/features/results/presentation/views/results_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PatientListView extends StatefulWidget {
  const PatientListView({Key? key}) : super(key: key);

  @override
  State<PatientListView> createState() => _PatientListViewState();
}

class _PatientListViewState extends State<PatientListView> {
  final listItem =["ساعة","ساعتين","ساعات 3","ساعات 4","ساعات 5"];
  String? valueChoose;

  final list =["اليوم","غدا","تخصيص يوم"];
  String? valueChoise;

  int? selectedRadio;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
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
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                                offset: const Offset(
                                  2.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                                child: const Icon(Icons.arrow_back_ios, size: 16,)),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      Text("قم باختيار العيادة",
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff171717)
                        ),),
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
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                                offset: const Offset(
                                  2.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
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
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 8.h,
                        width: 72.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffD7DFE9).withOpacity(.3),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0, left: 5),
                              child: Icon(
                                Icons.search, color: Color(0xffA3A3A3),),
                            ),
                            Text(" ابحث",
                              style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color(0xffB5B7C4)
                              ),),

                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResultsView()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          height: 8.h,
                          width: 16.w,
                          decoration: const BoxDecoration(
                              color: Color(0xff159BAD)
                          ),
                          child: Image.asset("assets/images/filtered.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 6.h,
                        width: 43.5.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDFDFDF))
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 24,
                          icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xff151515),),
                          underline: const SizedBox(),
                          hint: Text("طلب تاخير",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold,
                              color: Color(0xff404040)
                            )
                          ),),
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose=newValue;
                            });
                          },
                          items: listItem.map((valueItem){
                            return DropdownMenuItem(
                              value:valueItem ,
                                child: Text(valueItem));
                          }).toList(),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 6.h,
                        width: 43.5.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xffDFDFDF))
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 24,
                          icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xff151515),),
                          underline: const SizedBox(),
                          hint: Text("طلب اجازة",
                            style: GoogleFonts.cairo(
                                textStyle: const TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold,
                                    color: Color(0xff404040)
                                )
                            ),),
                          value: valueChoise,
                          onChanged: (value) {
                            setState(() {
                              valueChoise=value;
                            });
                          },
                          items: list.map((valueOfItem){
                            return DropdownMenuItem(
                                value:valueOfItem ,
                                child: Text(valueOfItem));
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: Row(
                      children: [
                        Text("الاسم",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.bold,
                                  color: Color(0xff404040)
                              )
                          ),),
                        SizedBox(width: 23.w,),
                        GestureDetector(
                          onTap: (){},
                            child: Image.asset("assets/images/list.png",height: 3.h,)),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text("الحالة",
                            style: GoogleFonts.cairo(
                                textStyle: const TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold,
                                    color: Color(0xff404040)
                                )
                            ),),
                        ),
                        SizedBox(width: 14.w,),
                        GestureDetector(
                            onTap: (){},
                            child: Image.asset("assets/images/list.png",height: 3.h,)),
                        const Spacer(),
                        InkWell(
                            radius: 30,
                            borderRadius: BorderRadius.circular(13),
                            onTap: (){},
                            child: SizedBox(
                                width: 3.h,
                                height: 3.h,
                                child: const Icon(Icons.keyboard_arrow_right,size: 20,))),
                        InkWell(
                          radius: 30,
                         borderRadius: BorderRadius.circular(13),
                          onTap: (){},
                            child: SizedBox(
                              width: 3.h,
                                height: 3.h,
                                child: const Icon(Icons.keyboard_arrow_left,size: 20,))),



                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("احمد خالد اسماعيل",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==1 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("يسرا السيد عبد اللطيف",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==2 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 3,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("هبة الله اشرف",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==3 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 4,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("مجدى خالد احمد",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==4 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 5,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("علي كامل",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==5 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 6,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("يوسف علي",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==6 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 7,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("زياد ياسر",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==7 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 8,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("محمد عبدالعزيز",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==8 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                          visualDensity: const VisualDensity(horizontal: -4),
                          activeColor: KPrimaryColor,
                          value: 9,
                          groupValue: selectedRadio,
                          onChanged: (value){
                            setState(() {
                              selectedRadio=value;
                            });
                          }
                      ),
                      Text("كريم اشرف",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16
                            ),
                            color:Colors.black,
                            fontWeight: selectedRadio ==9 ? FontWeight.w500 : FontWeight.w400
                        ),),
                    ],
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
