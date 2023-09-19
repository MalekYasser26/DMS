import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigatorBox extends StatefulWidget {
  final String text;
  final double height, fontSize;
  final WidgetBuilder route;
  final bool isRouteRequired;
  final int boxNum;
  final bool isPressed;
  final Function toggle;

  const NavigatorBox({
    Key? key,
    required this.text,
    required this.height,
    required this.fontSize,
    required this.route,
    this.isRouteRequired = true,
    required this.boxNum,
    required this.toggle,
    this.isPressed = false,
  }) : super(key: key);

  @override
  State<NavigatorBox> createState() => _NavigatorBoxState();
}

class _NavigatorBoxState extends State<NavigatorBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.isRouteRequired) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: widget.route),
          );
        } else if (!widget.isRouteRequired) {
          widget.toggle();
        }
      },
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
                color: widget.isRouteRequired
                    ? Colors.white
                    : widget.isPressed
                        ? AppColors.lightBlue
                        : Colors.grey)),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.cairo(
                color: widget.isRouteRequired
                    ? Colors.white
                    : widget.isPressed
                        ? AppColors.lightBlue
                        : Colors.grey,
                fontSize: widget.fontSize,
                fontWeight: widget.isRouteRequired
                    ? FontWeight.w400
                    : widget.isPressed
                        ? FontWeight.bold
                        : FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
