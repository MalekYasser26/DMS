import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DropMenu extends StatefulWidget {
   DropMenu({Key? key,required this.dropList,required this.iconDrop,this.dir=TextDirection.rtl}) : super(key: key);
  List<String> dropList  ;
  IconData iconDrop ;
  TextDirection dir ;
  @override
  State<DropMenu> createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {

  String dropdownValue= "" ;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.dropList.first; // Initialize the value here
  }
  Widget build(BuildContext context) {

    return  Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: Padding(
              padding:  EdgeInsets.all(2.w),
              child : Icon(Icons.keyboard_arrow_down,size: 35,weight: 5,color: Colors.grey.shade400,)
          ),
          isExpanded: true,
          alignment: Alignment.center,
          value: dropdownValue,
          items: widget.dropList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding:  EdgeInsets.only(right:2.w),
                child: Row(
                  children: [
                    SizedBox(width : 1.w),
                    Icon(widget.iconDrop,color: Colors.grey.shade400),
                    SizedBox(width: 2.w,),
                    Text(value,style: GoogleFonts.cairo(color: Colors.grey),textDirection:widget.dir),
                  ],
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              dropdownValue = value!;
            });
          }, ),
      ),
    );
  }
}
