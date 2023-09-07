import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/add_note_confirm_view.dart';
import 'package:doctor_management_system/features/patient_list/presentation/views/patient_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddNoteAlert extends StatefulWidget {
  final Color color;
  final Color textColor;
  final String text;
  final Color borderColor;
  final double textSize;

  const AddNoteAlert({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.borderColor,
    this.textSize = 14,
  }) : super(key: key);

  @override
  State<AddNoteAlert> createState() => _AddNoteAlertState();
}

class _AddNoteAlertState extends State<AddNoteAlert> {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اضافة ملاحظة',
                  style: GoogleFonts.cairo(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
            content: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(thickness: 1),
                    SizedBox(height: 1.h),
                    Text(
                      "اضافة ملاحظة الى المريض “اسم المريض”",
                      style: GoogleFonts.cairo(fontSize: 1.8.h),
                    ),
                    SizedBox(height: 1.h),
                    TextField(
                      textAlignVertical: TextAlignVertical.top,
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                      onTapOutside: (event) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.only(bottom: 18.h, right: 2.h, top: 1.h),
                        isDense: true,
                        hintText: "اضف ملاحظاتك هنا",
                        hintStyle:
                            GoogleFonts.cairo(color: Colors.grey.shade600),
                        alignLabelWithHint: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddNoteConfirmView(
                                  buttonRoute1: (context) =>
                                      const PatientListView(),
                                  buttonRoute2: (context) =>
                                      const PatientListView(),
                                ),
                              ),
                            ),
                            child: Container(
                              height: 5.h,
                              decoration: const BoxDecoration(
                                color: AppColors.lightBlue,
                              ),
                              child: Center(
                                child: Text(
                                  "اضافة",
                                  style: GoogleFonts.cairo(
                                      color: Colors.white, fontSize: 2.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1.w),
                        Expanded(
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              height: 5.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                              ),
                              child: Center(
                                child: Text(
                                  "الغاء",
                                  style: GoogleFonts.cairo(
                                      color: Colors.white, fontSize: 2.h),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showAlertDialog(context);
      },
      child: Container(
        height: 5.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(color: widget.borderColor),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.cairo(
              color: widget.textColor,
              fontSize: widget.textSize,
            ),
          ),
        ),
      ),
    );
  }
}
