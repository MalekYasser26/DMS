import 'package:doctor_management_system/core/utils/Constants.dart';
import 'package:doctor_management_system/features/booking_view/presentation/views/booking_view1.dart';
import 'package:doctor_management_system/features/dates_view/presentation/views/appointmentWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/RepeatedWidgets/ButtonWidget.dart';
import '../../../../core/utils/Colors.dart';
import '../../../login_view/presentation/views/login_view.dart';

class MyDatesView extends StatefulWidget {
  const MyDatesView({Key? key}) : super(key: key);

  @override
  State<MyDatesView> createState() => _MyDatesViewState();
}

class _MyDatesViewState extends State<MyDatesView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body:SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal : 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                            child: Center(child: Padding(
                              padding:  EdgeInsets.only(right: 2.w),
                              child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                            ))),
                      ),
                      SizedBox(width: 4.w,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text("مواعيدي",style: GoogleFonts.cairo(color: Colors.black,fontSize: 3.h,fontWeight: FontWeight.bold)),
                              SizedBox(width: 10.w,),

                              InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BookingView1(),)),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.lightBlue
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal :2.h,vertical: 1.w),
                                    child: Row(
                                        children:[
                                          Icon(Icons.add,color: Colors.white,size: 3.h),
                                          Text(" اضافة موعد",style: GoogleFonts.cairo(
                                              fontSize: 2.h,
                                              color: Colors.white
                                          ) ),
                                        ]
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  SearchBar(

                    hintStyle: MaterialStatePropertyAll(GoogleFonts.cairo(color: Colors.grey,fontSize: 2.5.h)),
                    leading: Icon(Icons.search_sharp,color: Colors.grey),
                    hintText: "ابحث",
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(AppColors.blueGrey.withOpacity(0.4)),
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
                          unselectedLabelStyle: GoogleFonts.cairo(color:AppColors.green,fontSize: 3.h),
                          labelColor:AppColors.green,
                          unselectedLabelColor: Colors.black ,
                          labelStyle: GoogleFonts.cairo(color: AppColors.green,fontSize: 3.h,fontWeight: FontWeight.bold),
                          tabs: const [
                            Tab(text: "السابقة",),
                            Tab(text: "الآتية",)
                          ]),
                    ),
                  ),

                  Expanded(
                    child: TabBarView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: ListView.separated(
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) =>
                                      AppointmentWidget(name: "${Names[index]}",address: "147 النزهة, ش المطار",
                                          date: "21 Aug, Mon - 09:20 am",firstTime: "كشف",isAbsent: absentPresent[index],isNext: true),
                                  separatorBuilder: (context, index) => SizedBox(height: 1.h),

                                  itemCount: absentPresent.length),
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
                                      AppointmentWidget(name: "${Names[index]}",address: "147 النزهة, ش المطار",
                                      date: "21 Aug, Mon - 09:20 am",firstTime: "كشف",isAbsent: absentPresent[index],isNext: false),
                                  separatorBuilder: (context, index) => SizedBox(height: 1.h),

                                  itemCount: absentPresent.length),
                            )

                          ],
                        ),

                      ],
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
