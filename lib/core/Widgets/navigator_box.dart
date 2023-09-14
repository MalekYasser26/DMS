import 'package:doctor_management_system/core/services/shared/shared_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigatorBox extends StatelessWidget {
  final String text;
  final double height, fontSize;
  final Color borderColor, textColor;
  final FontWeight weight;
  final WidgetBuilder route;
  final bool isRouteRequired;

  const NavigatorBox({
    Key? key,
    required this.text,
    required this.height,
    required this.fontSize,
    required this.borderColor,
    required this.textColor,
    required this.route,
    this.isRouteRequired = true,
    this.weight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SharedServices>(
      create: (context)  => SharedServices(),
       child: Consumer<SharedServices>(builder: (context, value, child) =>InkWell(
          onTap: () {
            if (isRouteRequired) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: route),
              );
            }
          },

         child:Container(
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
        ),
    ),

    );
  }
}
