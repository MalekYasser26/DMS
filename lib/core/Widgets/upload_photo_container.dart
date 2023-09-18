import 'package:doctor_management_system/core/constants/assets/assets_icons.dart';
import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class UploadPhotoContainer extends StatefulWidget {
  const UploadPhotoContainer({Key? key}) : super(key: key);

  @override
  State<UploadPhotoContainer> createState() => _UploadPhotoContainerState();
}

class _UploadPhotoContainerState extends State<UploadPhotoContainer> {
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
      padding: EdgeInsets.symmetric(vertical: 2.0.h),
      child: DottedBorder(
        borderType: BorderType.RRect,
        dashPattern: [4.w],
        radius: Radius.circular(3.w),
        child: InkWell(
          onTap: () => getImage(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.0.h),
                  child: SvgPicture.asset(AssetsIcons.documentIcon),
                ),
                Text(
                  "رفع صورة الدواء ان وجدت",
                  style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 12.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "Drag or drop file",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 1.5.h),
                    ),
                    TextSpan(
                        text: " Or Browse",
                        style: GoogleFonts.montserrat(
                            color: AppColors.lightBlue, fontSize: 1.5.h))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
