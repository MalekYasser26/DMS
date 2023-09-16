import 'package:doctor_management_system/core/constants/app_colors.dart';
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
  final int boxNum;

  const NavigatorBox({
    Key? key,
    required this.text,
    required this.height,
    required this.fontSize,
    required this.borderColor,
    required this.textColor,
    required this.route,
    this.isRouteRequired = true,
    required this.boxNum,
    this.weight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sharedServices = Provider.of<SharedServices>(context);
    return ChangeNotifierProvider<SharedServices>(
      create: (context) => SharedServices(),
      child: Consumer<SharedServices>(
        builder: (context, value, child) => InkWell(
          onTap: () {
            if (isRouteRequired) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: route),
              );
            } else if (!isRouteRequired) {
              if (boxNum == 1) {
                sharedServices.isPressed = false;
              }
              if (boxNum == 2) {
                sharedServices.isPressed = true;
              }
              sharedServices.toggleNavBoxActive();
            }
          },
          child: Container(
            height: height,
            decoration: BoxDecoration(
              border: Border.all(
                  color: isRouteRequired
                      ? Colors.white
                      : (boxNum == 1 && sharedServices.isPressed == false
                          ? AppColors.lightBlue
                          : boxNum == 2 && sharedServices.isPressed == true
                              ? AppColors.lightBlue
                              : Colors.grey)),
              color: Colors.transparent,
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.cairo(
                    color: isRouteRequired
                        ? Colors.white
                        : boxNum == 1 && sharedServices.isPressed == false
                            ? AppColors.lightBlue
                            : boxNum == 2 && sharedServices.isPressed == true
                                ? AppColors.lightBlue
                                : Colors.grey,
                    fontSize: fontSize,
                    fontWeight: weight),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
