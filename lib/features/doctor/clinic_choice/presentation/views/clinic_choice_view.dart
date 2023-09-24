import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/data/booking_view_temp_data.dart';
import 'package:doctor_management_system/features/doctor/patient_list/presentation/views/patient_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:doctor_management_system/core/constants/assets/assets_icons.dart';
import 'package:doctor_management_system/core/constants/assets/assets_images.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ClinicChoiceView extends StatelessWidget {
  const ClinicChoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale= getL10n(context);
    final pref = getPreferenceService(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.3.h, left: 1.3.h, right: 1.3.h),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            blurRadius: 5.0,
                            spreadRadius: 1,
                            offset: const Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: pref.isEn()
                            ? EdgeInsets.only(left: 2.w)
                            : EdgeInsets.only(right: 2.w),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Expanded(
                    child: Text(
                      locale.chooseClinic,
                      style: GoogleFonts.cairo(
                          fontSize: 3.h,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff171717)),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal :3.w),
                    child: InkWell(
                        onTap: () {
                          pref.changeLocale(pref.isEn()?'ar':'en');
                        },
                        child: const Icon(Icons.public)),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.3),
                            blurRadius: 5.0,
                            spreadRadius: 1,
                            offset: const Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AssetsIcons.guidanceIcon),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: pref.isEn()
                        ? EdgeInsets.only(left: 7.h)
                        : EdgeInsets.only(right: 7.h),
                    child: Text(
                      "${locale.chooseClinic}${locale.seePatient}",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w500,
                        fontSize: 2.h,
                        color: const Color(0xff171717),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Image.asset(AssetsImages.clinic),
            Padding(
              padding: EdgeInsets.only(top: 3.h, left: 3.h, right: 3.h),
              child: Text(
                locale.chooseClinic,
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w600,
                    fontSize: 2.5.h,
                    color: const Color(0xff171717)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h, left: 3.h, right: 3.h),
              child: DropDownMenu(
                  dropList: clinicName, icon: Icons.location_on_outlined),
            ),
            const Expanded(child: SizedBox.shrink()),
            Padding(
              padding: EdgeInsets.all(3.h),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientListView(),
                  ),
                ),
                child: Container(
                  height: 7.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xff159BAD)),
                  child: Center(
                    child: Text(
                      locale.displayPatientList,
                      style: GoogleFonts.cairo(
                        textStyle: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 2.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}