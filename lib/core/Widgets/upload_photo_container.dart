import 'package:doctor_management_system/core/constants/assets.dart';
import 'package:doctor_management_system/core/constants/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';


class UploadPhotoWidget extends StatefulWidget {
   const UploadPhotoWidget({Key? key}) : super(key: key);

  @override
  State<UploadPhotoWidget> createState() => _UploadPhotoWidgetState();
}

class _UploadPhotoWidgetState extends State<UploadPhotoWidget> {
  XFile? image;
  final ImagePicker picker = ImagePicker();
  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = img;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.0.h),
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: [4.w],
        radius:Radius.circular(3.w) ,
        child: InkWell(
          onTap: () =>getImage(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 2.0.h),
                  child: Image.asset(AssetsData.uploadPhoto,height: 5.h),
                ),
                Text("رفع صورة الدواء ان وجدت",style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 12.sp,
                ),),
                Padding(
                  padding:  EdgeInsets.only(bottom: 2.h),
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Drag or drop file",
                        style: GoogleFonts.montserrat(color: Colors.black,fontSize: 1.5.h),
                      ),
                      TextSpan(
                        text: " Or Browse",
                        style: GoogleFonts.montserrat(color: AppColors.lightBlue,fontSize: 1.5.h)
                      )
                    ]
                  )),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
