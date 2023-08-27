import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/core/utils/Constants.dart';
import 'package:doctor_management_system/features/dates_view/presentation/views/AbsentPresent.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/patientDetailsView.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/widgets/NoteAlertDialog.dart';
import 'package:doctor_management_system/features/results/presentation/views/results_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../rateService_view/presentation/views/widgets/confirm_rating_screen.dart';

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
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_back_ios, size: 16,),
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
                        Spacer(),
                        SizedBox(width: 16.w,),
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
                        const Spacer(),
                        GestureDetector(
                            onTap: (){},
                            child: Image.asset("assets/images/list.png",height: 3.h,)),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
                                    ),
                                    color:Colors.black,
                                    fontWeight: selectedRadio ==1 ? FontWeight.w500 : FontWeight.w400
                                ),),
                              SizedBox(width: 2.w,),
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
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
                                style: GoogleFonts.cairo(
                                    textStyle:  TextStyle(
                                        fontSize: 2.h
                                    ),

                                    color:Colors.black,
                                    fontWeight: selectedRadio ==9 ? FontWeight.w500 : FontWeight.w400
                                ),),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AbsentPresent(
                                        isAbsent: absentPresent[index], h: 4.h, w: 1.h),
                                  ),
                                  Spacer(),
                                  Expanded(child: InkWell(
                                    onTap: () {},
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: PopupMenuButton<String>(
                                        itemBuilder: (BuildContext context) {
                                          return <PopupMenuItem<String>>[
                                             PopupMenuItem<String>(
                                              value: 'item1',
                                              child: Text('رؤية التفاصيل',style: GoogleFonts.cairo()),
                                            ),
                                             PopupMenuItem<String>(
                                              value: 'item2',
                                              child: Text('رؤية الملاحظات',style: GoogleFonts.cairo()),
                                            ),
                                             PopupMenuItem<String>(
                                              value: 'item3',
                                              child: Text('اضافة ملاحظة',style: GoogleFonts.cairo(),),
                                            ),
                                             PopupMenuItem<String>(
                                              value: 'item4',
                                              child: Text('انهاء وقت المريض',style: GoogleFonts.cairo(),),
                                            ),

                                          ];
                                        },
                                        onSelected: (String value) {
                                          if (value == 'item1') {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDetailsView(initialIndex: 0),));
                                          } else if (value == 'item2') {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => PatientDetailsView(initialIndex: 2),));
                                          } else if (value=='item3'){
                                            showAlertDialog(context); // Call the function to show the alert dialog

                                          }
                                        },
                                        child: Image.asset('assets/images/threedots.png'),
                                      ),
                                    ),
                                  )


                                  )
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => SizedBox(height: 1.h),
                            itemCount:absentPresent.length ),
                      ),

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

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                [
                  Text('اضافة ملاحظة',style: GoogleFonts.cairo(fontWeight: FontWeight.bold)),
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close)),
                ]),

            content: SizedBox(
              width: double.infinity,
              height: 40.h,
              child: Column(
                children: [
                  Divider(thickness: 1),
                  SizedBox(height: 1.h,),
                  Text("اضافة ملاحظة الى المريض “اسم المريض”",style: GoogleFonts.cairo(fontSize: 1.8.h)),
                  SizedBox(height: 1.h,),
                  TextField(
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                    decoration: InputDecoration(
                      enabledBorder:  OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.grey.shade300, ),
                      ),
                      contentPadding: EdgeInsets.only(bottom: 18.h,right: 2.h,top: 1.h),
                      isDense: true,

                      hintText: "اضف ملاحظاتك هنا",
                      hintStyle: GoogleFonts.cairo(color:Colors.grey.shade600 ),
                      alignLabelWithHint: true,

                    ),
                    keyboardType: TextInputType.emailAddress,

                  ),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmRatingView(),)),
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: AppColors.lightBlue,
                            ),
                            child: Center(
                              child: Text(
                                "اضافة",
                                style: GoogleFonts.cairo(color: Colors.white,fontSize: 2.h ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 1.w,),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                              color:Colors.grey.shade400,
                            ),
                            child: Center(
                              child: Text(
                                "الغاء",
                                style: GoogleFonts.cairo(color: Colors.white,fontSize: 2.h ),
                              ),
                            ),
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
      },
    );
  }
}
