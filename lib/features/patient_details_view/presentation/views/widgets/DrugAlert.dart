import 'package:doctor_management_system/core/RepeatedWidgets/UploadPhoto.dart';
import 'package:doctor_management_system/core/utils/Colors.dart';
import 'package:doctor_management_system/features/home_view/presentation/views/home_view.dart';
import 'package:doctor_management_system/features/rateService_view/presentation/views/widgets/confirm_rating_screen.dart';
import 'package:doctor_management_system/features/register_view/presentation/views/widgets/success_confirm_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class DrugAlertButton extends StatefulWidget {
  final Color color;
  final Color Textcolor;
  final String TextSt;
  final Color borderColor;
  final double textSize;

  DrugAlertButton({
    Key? key,
    required this.color,
    required this.Textcolor,
    required this.TextSt,
    required this.borderColor,
    this.textSize = 14,
  }) : super(key: key);

  @override
  State<DrugAlertButton> createState() => _DrugAlertButtonState();
}

class _DrugAlertButtonState extends State<DrugAlertButton> {

  // Function to show the alert dialog
  void _showAlertDialog(BuildContext context) {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(thickness: 1),
                    SizedBox(height: 1.h,),
                    Text("اضافة دواء الى المريض “اسم المريض”",style: GoogleFonts.cairo(fontSize: 1.8.h)),
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

                        hintText: "اضف اسم الدواء هنا",
                        hintStyle: GoogleFonts.cairo(color:Colors.grey.shade600 ),
                        alignLabelWithHint: true,

                      ),
                      keyboardType: TextInputType.emailAddress,

                    ),
                    SizedBox(height: 2.h,),
                    UploadPhotoWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmView(route: (context) => HomeView(),),)),
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
                    ),

                  ],

                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showAlertDialog(context); // Call the function to show the alert dialog
      },
      child: Container(
        height: 5.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(color: widget.borderColor),
        ),
        child: Center(
          child: Text(
            widget.TextSt,
            style: GoogleFonts.cairo(
              color: widget.Textcolor,
              fontSize: widget.textSize,
            ),
          ),
        ),
      ),
    );
  }
}
