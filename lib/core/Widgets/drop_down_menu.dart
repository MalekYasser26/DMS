import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DropDownMenu extends StatefulWidget {
  final List<String> dropList;
  final IconData? icon;
  final TextDirection textDirection;
  const DropDownMenu(
      {Key? key,
      required this.dropList,
      this.icon,
      this.textDirection = TextDirection.rtl})
      : super(key: key);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  late String dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = widget.dropList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: Padding(
              padding: EdgeInsets.all(2.w),
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 35,
                weight: 5,
                color: Colors.grey.shade400,
              )),
          isExpanded: true,
          alignment: Alignment.center,
          value: dropdownValue,
          items: widget.dropList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: Row(
                  children: [
                    SizedBox(width: 1.w),
                    widget.icon != null
                        ? Icon(widget.icon, color: Colors.grey.shade400)
                        : const Text("",
                            style: TextStyle(color: Colors.transparent)),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(value,
                        style: GoogleFonts.cairo(color: Colors.grey),
                        textDirection: widget.textDirection),
                  ],
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              dropdownValue = value!;
            });
          },
        ),
      ),
    );
  }
}
