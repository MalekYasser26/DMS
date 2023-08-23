import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'SelectedStarsUpdateUI.dart';

class RateSeviceView extends StatefulWidget {
  const RateSeviceView({Key? key}) : super(key: key);

  @override
  State<RateSeviceView> createState() => _RateSeviceViewState();
}

class _RateSeviceViewState extends State<RateSeviceView> {
  String dropdownValue1 = clinicName.first ;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal : 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          child: Icon(Icons.arrow_forward_ios,color: Colors.black,)),
                    ),
                    SizedBox(width: 4.w,),
                    Text("تقييم الخدمة",style: GoogleFonts.cairo(color: Colors.black,fontSize: 3.h,fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 2.h),
                Text("ما هو تقييمك لخدماتنا؟",style: GoogleFonts.cairo(color: Colors.black,fontSize: 2.5.h,fontWeight: FontWeight.bold)),
                Text("ساعدنا على معرفة رأيك في خدماتنا للعمل على تطويرنا دائماً",
                    style: GoogleFonts.cairo(color: Colors.grey,fontSize :1.7.h ,fontWeight: FontWeight.w500),softWrap: false),
                SizedBox(height: 2.h),
                Text("اختر العيادة المراد تقييمها" , style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 2.1.h),),
                SizedBox(height: 1.h),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Padding(
                          padding:  EdgeInsets.all(2.w),
                          child : Icon(Icons.keyboard_arrow_down,size: 35,weight: 5,color: Colors.grey.shade400,)
                      ),
                      isExpanded: true,
                      alignment: Alignment.center,
                      value: dropdownValue1,
                      items: clinicName.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              SizedBox(width : 1.w),
                              Icon(Icons.location_on_outlined,color: Colors.grey.shade400),
                              SizedBox(width: 2.w,),
                              Text(value,style: GoogleFonts.cairo(color: Colors.grey),),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          dropdownValue1 = value!;
                        });
                      }, ),
                  ),
                ),
                SizedBox(height: 2.h),
            Container(
              color: AppColors.lightBlue.withOpacity(0.1),
              width: double.infinity,
              height: 8.h,
              child: Padding(
                padding: EdgeInsets.only(right: 9.w),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        updateSelectedStars(index);
                      });
                    },
                    child:selectedStars[index] ? Icon(
                      Icons.star_outline_rounded,
                      size: 5.h,
                    ) : Icon(
                        Icons.star_rounded,
                        size: 5.h,
                      color: AppColors.golden,
                  ),
                ),
                  separatorBuilder: (context, index) => SizedBox(width: 5.w),
                ),
            ))],
            ),
          ),
        ),
      ),
    );
  }
}
