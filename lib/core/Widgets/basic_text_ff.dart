import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BasicTextFF extends StatelessWidget {
  final String ffText;
  final IconData? suffix;

  final basicController = TextEditingController();

  BasicTextFF({Key? key, required this.ffText, this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ffText,style: GoogleFonts.cairo(fontWeight: FontWeight.w600,fontSize: 2.h,color: Colors.black)),
        Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: TextFormField(
          textDirection: TextDirection.rtl,
          onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
          controller: basicController,
          decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.grey.shade300, ),
            ),
            contentPadding: EdgeInsets.symmetric(vertical :1.5.h,horizontal: 2.h),

            hintText: "ادخل $ffText",
            hintStyle: GoogleFonts.cairo(fontSize: 14.sp,color:Colors.grey.shade400),
            suffixIcon: suffix != null ? Icon(suffix) : null,
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Enter Email";
            } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(basicController.text)) {
              return "Enter a correct email form";
            }
            return null;
          },
        ),
      ),
        SizedBox(height: 1.h,),

      ]
    );
  }
}
