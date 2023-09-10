import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigatorBox extends StatelessWidget {
  final String text;
  final double height, fontSize;
  final Color borderColor, textColor;
  final WidgetBuilder route;
  final FontWeight weight;
  const NavigatorBox(
      {Key? key,
      required this.text,
      required this.height,
      required this.fontSize,
      required this.borderColor,
      required this.textColor,
      required this.route,
      this.weight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: route)),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: Colors.transparent,
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.cairo(
                color: textColor, fontSize: fontSize, fontWeight: weight),
          ),
        ),
      ),
    );
  }
}
