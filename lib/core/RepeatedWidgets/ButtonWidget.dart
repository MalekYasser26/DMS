import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';


class BasicButtonRoute extends StatelessWidget {
  final WidgetBuilder route;
  final  Color color  ;
  final  Color Textcolor  ;
  final  String TextSt  ;
  final  Color borderColor  ;
  final double textSize ;
  BasicButtonRoute({Key? key, required this.route,required this.color,required this.Textcolor,required this.TextSt,required this.borderColor,this.textSize=14}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: route)),
      child: Container(
        height: 5.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: Text(
            TextSt,
            style: GoogleFonts.cairo(color: Textcolor,fontSize: textSize ),
          ),
        ),
      ),
    );
  }
}
