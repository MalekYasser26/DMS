import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/features/patientList/presentation/views/patient_list_view.dart';
import 'package:doctor_management_system/features/results/presentation/widgets/TableCalendarWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

import '../../../../providers/calendar_pickerProvider.dart';


class ResultsView extends StatefulWidget {
  const ResultsView({Key? key}) : super(key: key);

  @override
  State<ResultsView> createState() => _ResultsViewState();
}

class _ResultsViewState extends State<ResultsView> {
  int? selectedRadio2;
  int? selectedRadio3;

  void _showDatePicker() async{
   final DateTime? picked = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),);
   if (picked != null && picked != Provider.of<calendarPickerProvider>(context, listen: false).selectedDate)
     Provider.of<calendarPickerProvider>(context, listen: false).updateSelectedDate(picked); // Update the selected date
  }

  @override

  Widget build(BuildContext context) {
    Provider.of<calendarPickerProvider>(context, listen: false).formattedDate = DateFormat('yyyy-MM-dd').format(Provider.of<calendarPickerProvider>(context, listen: false).selectedDate.toLocal());

    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
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
                      Text("تصفية النتائح",
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff171717)
                        ),),
                      const Spacer(),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Text("الحالة",
                style: GoogleFonts.cairo(
                textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color:Color(0xff404040),
                ),
        ),),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 1,
                            groupValue: selectedRadio2,
                            onChanged: (value){
                              setState(() {
                                selectedRadio2=value;
                              });
                            }
                        ),
                        Text("الجميع",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                            ),
                          ),),
                      ],
                    ),
                    SizedBox(width: 7.w,),
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 2,
                            groupValue: selectedRadio2,
                            onChanged: (value){
                              setState(() {
                                selectedRadio2=value;
                              });
                            }
                        ),
                        Text("حاضر",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                            ),
                          ),),
                      ],
                    ),
                    SizedBox(width: 7.w,),
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 3,
                            groupValue: selectedRadio2,
                            onChanged: (value){
                              setState(() {
                                selectedRadio2=value;
                              });
                            }
                        ),
                        Text("غائب",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                            ),
                          ),),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: [
                       Text("اول مرة",
                        style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                                fontSize: 16,
                              color:Color(0xff404040),
                            ),
                        ),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 1,
                            groupValue: selectedRadio3,
                            onChanged: (value){
                              setState(() {
                                selectedRadio3=value;
                              });
                            }
                        ),
                        Text("الجميع",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                            ),
                          ),
                        )],
                    ),
                    SizedBox(width: 6.w,),
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 2,
                            groupValue: selectedRadio3,
                            onChanged: (value){
                              setState(() {
                                selectedRadio3=value;
                              });
                            }
                        ),
                        Text("كشف",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                            ),
                          ),
                        ) ],
                    ),
                    SizedBox(width: 6.w,),
                    Row(
                      children: [
                        Radio(
                            visualDensity: const VisualDensity(horizontal: -4),
                            activeColor: KPrimaryColor,
                            value: 3,
                            groupValue: selectedRadio3,
                            onChanged: (value){
                              setState(() {
                                selectedRadio3=value;
                              });
                            }
                        ),
                        Text("استشارة",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff404040)
                              ),


                          ),),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0,bottom: 4),
                  child: Row(
                    children: [
                      Text("التاريخ",
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:Color(0xff404040),
                          ),
                        ),),
                    ],
                  ),
                ),

                TextFormField(
                  controller: Provider.of<calendarPickerProvider>(context, listen: false).myController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "اختر التاريخ",
              hintStyle:GoogleFonts.cairo(
                  textStyle:  const TextStyle(
                      fontSize: 14,
                      color: Color(0xffA3A3A3)
                  ),
              ),
              suffixIcon:  MaterialButton(
                onPressed:_showDatePicker ,
                child:Image.asset("assets/images/calendar.png",height: 4.h,) ,)
            ),
          ),
                SizedBox(height: 3.h,),
                TableCalendarWidget(syncedDate: Provider.of<calendarPickerProvider>(context, listen: false).selectedDate),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                InkWell(
                  onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const PatientListView(),)),
                  child: Container(
                    height: 7.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff159BAD)
                    ),
                    child: Center(
                      child: Text("رؤية النتائج",
                        style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                                color: Color(0xffFFFFFF),
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
    );
  }
}
