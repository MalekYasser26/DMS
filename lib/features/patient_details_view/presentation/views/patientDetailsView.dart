import 'package:doctor_management_system/core/utils/Constants.dart';
import 'package:doctor_management_system/core/utils/assets.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/widgets/ExtraNotesWidget.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/widgets/MedicalHistoryWidget.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/widgets/drugWidget.dart';
import 'package:doctor_management_system/features/patient_details_view/presentation/views/widgets/medicalBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/Colors.dart';

class PatientDetailsView extends StatefulWidget {
  const PatientDetailsView({Key? key}) : super(key: key);

  @override
  State<PatientDetailsView> createState() => _PatientDetailsViewState();
}

class _PatientDetailsViewState extends State<PatientDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal : 4.w),
                child: Column(
                  children: [
                    SizedBox(height: 3.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                              height: 5.h,
                              width: 5.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(.2),
                                      blurRadius: 5.0,
                                      spreadRadius: 1,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(right: 2.w),
                                child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                              )),
                        ),
                        SizedBox(width: 4.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text("تفاصيل المريض",style: GoogleFonts.cairo(color: Colors.black,fontSize: 3.h,fontWeight: FontWeight.bold)),
                                SizedBox(width: 10.w,),


                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 60,
                      child: Image.asset(AssetsData.person,fit: BoxFit.cover),
                    ),
                    SizedBox(height: 1.h,),
                    Text("احمد خالد اسماعيل",style: GoogleFonts.cairo(fontSize: 3.h,color: Colors.black),),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_outline,color: Colors.black,),
                                SizedBox(width: 2.w,),
                                Text("26 Years Old, Male",style: GoogleFonts.cairo(fontSize: 2.h,color: Colors.grey),),
                              ],
                            ),
                            SizedBox(width: 4.w,),
                            Row(
                              children: [
                                Icon(Icons.local_phone_outlined,color: Colors.black,),
                                SizedBox(width: 2.w,),
                                Text("+20122402921",style: GoogleFonts.cairo(fontSize: 2.h,color: Colors.grey),),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4.w,),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Row(
                        children: [
                          MedicalBoxInfo(number: "22.4", category: "BMI",isBP: false,extraST: "10"),
                          SizedBox(width: 3.w,),
                          MedicalBoxInfo(number: "92", category: "Weight",isBP: false,extraST: "10 kg"),
                          SizedBox(width: 3.w,),
                          MedicalBoxInfo(number: "124/80", category: "Blood Pressure",isBP: true,extraST: ""),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 2.h,bottom: 2.h ),
                      child: Container(
                        height: 6.5.h,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                        ),
                        child: TabBar(
                            indicatorColor: AppColors.green,
                            unselectedLabelStyle: GoogleFonts.cairo(color:AppColors.green,fontSize: 2.4.h),
                            labelColor:AppColors.green,
                            unselectedLabelColor: Colors.black ,
                            labelStyle: GoogleFonts.cairo(color: AppColors.green,fontSize: 2.4.h,fontWeight: FontWeight.bold),
                            tabs:  [
                              Tab(
                                child: Text("التاريخ الطبي",style: GoogleFonts.cairo(fontSize: 1.9.h,),),
                              ),
                              Tab(text: "الأدوية",),
                              Tab(text: "ملاحظات",),
                            ]),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: ListView.separated(
                                    physics: ClampingScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                       MedicalHistoryWidget(text: "${MDhistory[index]}", date:"21 Aug, Mon ", diagnosis: diagnosis[index]),
                                    separatorBuilder: (context, index) => SizedBox(height: 1.h),

                                    itemCount: 4),
                              )

                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: ListView.separated(
                                    physics: ClampingScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                    DrugWidget(imagePath: drugImgs[index], text: "${doses[index]}", drugs: "${drugs[index]}",manyTimes: "${timesADay[index]}"),
                                    separatorBuilder: (context, index) => SizedBox(height: 1.h),

                                    itemCount: drugs.length),
                              )

                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: ListView.separated(
                                    physics: ClampingScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        ExtraNotesWidget(date: "21 Aug, Mon - 09:20 am", note: notes[index]),
                                    separatorBuilder: (context, index) => SizedBox(height: 1.h),

                                    itemCount: notes.length),
                              )

                            ],
                          ),

                        ],
                      ),
                    ),



                  ],
                ),
              )),
        ),
      ),
    );
  }
}
