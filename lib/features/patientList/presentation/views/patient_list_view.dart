import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/core/utils/Constants.dart';
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
  int? currIndex ;

  int currentIndex = 0;
  String ? text;
  @override
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height ;
    var Mwidth = MediaQuery.of(context).size.width ;


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
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      children: [
                        Text("الاسم",
                          style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.bold,
                                  color: Color(0xff404040)
                              )
                          ),),
                          SizedBox(width:15.h,),
                        Image.asset("assets/images/list.png",height: 3.h,),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(currentIndex==0?"الحالة":currentIndex==1?"التاريخ":currentIndex==2?"الحجز":"اول مره؟",
                            style: GoogleFonts.cairo(
                                textStyle: const TextStyle(
                                    fontSize: 12,fontWeight: FontWeight.bold,
                                    color: Color(0xff404040)
                                )
                            ),),
                        ),
                        const Spacer(),
                        Image.asset("assets/images/list.png",height: 3.h,),
                        SizedBox(width:1.h,),
                        SizedBox(
                          height: 6.h,
                          width: 6.w,
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                if (currentIndex >=1) {
                                  currentIndex = currentIndex - 1;
                                }
                              });
                            },
                            shape: const CircleBorder(),
                            color: const Color(0xffF5F7F9),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.arrow_back_ios_outlined,size: 13,),
                            ),
                          ),
                        ),
                        SizedBox(width:1.h,),
                        SizedBox(
                          height: 6.h,
                          width: 6.w,
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                if (currentIndex <=2) {
                                  currentIndex = currentIndex + 1;
                                }
                              });
                            },
                            shape: const CircleBorder(),
                            color: const Color(0xffF5F7F9),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.arrow_forward_ios,size: 13,),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                 Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                            itemBuilder: (context, index) {
                              currIndex = index ;
                              return Container(
                                height: Mheight*0.07,
                                color: selectedRadio == index ? AppColors.lightBlue.withOpacity(0.1) : Colors.transparent, // Set background color based on selection
                                child: Row(
                                children: [
                                  Radio(
                                      visualDensity: const VisualDensity(horizontal: -4),
                                      activeColor: KPrimaryColor,
                                      value: index,
                                      groupValue: selectedRadio,
                                      onChanged: (value){
                                        setState(() {
                                          selectedRadio=value;
                                        });
                                      }
                                  ),
                                  Text("${patientList[index]}",
                                    style: GoogleFonts.cairo(
                                        textStyle:  TextStyle(
                                            fontSize: Mheight*0.019
                                        ),
                                        color:Colors.black,
                                    ),),
                                  SizedBox(width: 2.w,),
                                ],
                            ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(width: 2.w,height:Mheight*0.019 ),
                            itemCount: patientList.length),
                      ),
                      SizedBox(width:2.w),
                      Expanded(
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              currIndex = index ;
                              return  Column(
                                children: [
                                  if (currentIndex == 0)
                                   Column(
                                     children: [
                                       SizedBox(height: 3.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.orangeAccent.withOpacity(.2),
                                       child: const Text("حاضر",style: TextStyle(color: Colors.orange),),),
                                       SizedBox(height: 5.5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.pink.withOpacity(.2),
                                         child: const Text("غائب",style: TextStyle(color: Colors.pink),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.orangeAccent.withOpacity(.2),
                                         child: const Text("حاضر",style: TextStyle(color: Colors.orange),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.orangeAccent.withOpacity(.2),
                                         child: const Text("حاضر",style: TextStyle(color: Colors.orange),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.pink.withOpacity(.2),
                                         child: const Text("غائب",style: TextStyle(color: Colors.pink),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.orangeAccent.withOpacity(.2),
                                         child: const Text("حاضر",style: TextStyle(color: Colors.orange),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.pink.withOpacity(.2),
                                         child: const Text("غائب",style: TextStyle(color: Colors.pink),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.orangeAccent.withOpacity(.2),
                                         child: const Text("حاضر",style: TextStyle(color: Colors.orange),),),
                                       SizedBox(height: 5.h,),
                                       Container(
                                         alignment: Alignment.center,height: 3.5.h,width: 13.w,color: Colors.pink.withOpacity(.2),
                                         child: const Text("غائب",style: TextStyle(color: Colors.pink),),),

                                     ],
                                   )
                                  else if (currentIndex == 1)
                                    Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 2.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("21 Aug, Mon - 09:20 Am",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),

                                        ],
                                      ),
                                    )
                                  else if (currentIndex == 2)
                                      Column(
                                        children: [
                                          SizedBox(height: 2.h,),
                                          Text("اونلاين",
                                          style: GoogleFonts.cairo(
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,fontSize: 12
                                            )
                                          ),),
                                          SizedBox(height: 6.h,),
                                          Text("اوفلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اوفلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اونلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اوفلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اونلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اوفلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اونلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("اونلاين",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),

                                        ],
                                      )
                                    else
                                      Column(
                                        children: [
                                          SizedBox(height: 2.h,),
                                          Text("كشف",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("كشف",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("استشارة",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("استشارة",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("كشف",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("استشارة",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("كشف",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("استشارة",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),
                                          SizedBox(height: 6.h,),
                                          Text("كشف",
                                            style: GoogleFonts.cairo(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 12
                                                )
                                            ),),

                                        ],
                                      )
                                ],
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(width: 2.w,height:Mheight*0.019 ),
                            itemCount: 1),
                      ),


                    ],
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
