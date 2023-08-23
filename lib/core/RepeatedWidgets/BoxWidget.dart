import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key,required this.text, required this.height,required this.fontSize,required this.borderColor, required this.textColor,required this.route, this.weight = FontWeight.w400}) : super(key: key);
 final String text ;
 final double height,fontSize ;
 final Color borderColor,textColor ;
  final WidgetBuilder route;
  final FontWeight weight ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: route)),
      child: Container(
        child: Center(child: Text(text,style: GoogleFonts.cairo(color: textColor,fontSize:fontSize,fontWeight: weight),)),
        height: height,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            color: Colors.transparent
        ),
      ),
    );
  }
}
