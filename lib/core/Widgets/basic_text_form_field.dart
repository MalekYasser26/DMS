import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BasicTextFormField extends StatelessWidget {
  final String text;
  final IconData? suffixIcon;
  final bool isNumbers;
  final bool isEmail;
  final bool isText;
  final bool isPass;
  final TextEditingController basicController = TextEditingController();

  BasicTextFormField({
    Key? key,
    required this.text,
    this.suffixIcon,
    this.isNumbers = false,
    this.isEmail = false,
    this.isText = false,
    this.isPass = false,
  }) : super(key: key);

  TextInputType getKeyboardType() {
    if (isNumbers) {
      return TextInputType.number;
    } else if (isEmail) {
      return TextInputType.emailAddress;
    } else if (isText) {
      return TextInputType.text;
    } else if (isPass) {
      return TextInputType.visiblePassword;
    } else {
      return TextInputType.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        text,
        style: GoogleFonts.cairo(
          fontWeight: FontWeight.w600,
          fontSize: 2.h,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: TextFormField(
          obscureText: isPass,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          controller: basicController,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade300,
              ),
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.h),
            hintText: "${getL10n(context).enter} $text",
            hintStyle:
            GoogleFonts.cairo(fontSize: 14.sp, color: Colors.grey.shade400),
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          ),
          keyboardType: getKeyboardType(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Field is empty";
            } else if (isEmail && !RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(basicController.text)) {
              return "Enter a correct email format";
            }
            return null;
          },
        ),
      ),
      SizedBox(
        height: 1.h,
      ),
    ]);
  }
}