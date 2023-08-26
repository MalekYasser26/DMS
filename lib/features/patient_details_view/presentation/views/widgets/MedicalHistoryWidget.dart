import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MedicalHistoryWidget extends StatelessWidget {
  final String text;
  final String date;
  final String diagnosis;
  MedicalHistoryWidget({
    required this.text,
    required this.date,
    required this.diagnosis,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal : 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              text,
                              style: GoogleFonts.cairo(fontSize: 2.h, color: Colors.grey),
                            ),
                            Text(
                              " $date",
                              style: GoogleFonts.poppins(fontSize: 1.5.h, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.all(1.0.h),
                        child: Text(
                          diagnosis,
                          style: GoogleFonts.cairo(fontSize: 2.3.h, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
