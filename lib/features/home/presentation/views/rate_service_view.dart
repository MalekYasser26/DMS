import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/core/widgets/basic_button_route.dart';
import 'package:doctor_management_system/data/rate_service_view_temp_data.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/confirm_rating_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class RateSeviceView extends StatelessWidget {
  const RateSeviceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController basicController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 5.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            blurRadius: 5.0,
                            spreadRadius: 1,
                            offset: const Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: !context.watch<PreferenceService>().isEn()
                              ? EdgeInsets.only(right: 2.w)
                              : EdgeInsets.only(left: 2.w),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "fix this",
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 3.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Text(
                "fix this",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontSize: 2.5.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "fix this",
                style: GoogleFonts.cairo(
                  color: Colors.grey,
                  fontSize: 1.7.h,
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
              SizedBox(height: 2.h),
              Text(
                "fix this",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 2.1.h,
                ),
              ),
              SizedBox(height: 1.h),
              DropDownMenu(
                dropList: clinicNameService,
                icon: Icons.location_on_outlined,
              ),
              SizedBox(height: 2.h),
              Container(
                color: AppColors.lightBlue.withOpacity(0.1),
                width: double.infinity,
                height: 8.h,
                child: Center(
                  child: RatingBar(
                    initialRating: 3,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                    itemSize: 6.h,
                    textDirection: TextDirection.ltr,
                    allowHalfRating: false,
                    minRating: 1,
                    maxRating: 5,
                    ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star_rounded,
                        color: AppColors.golden,
                      ),
                      half: const Icon(
                        Icons.star_rounded,
                        color: AppColors.golden,
                      ),
                      empty: const Icon(
                        Icons.star_outline_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "fix this",
                style: GoogleFonts.cairo(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 2.1.h,
                ),
              ),
              SizedBox(height: 1.h),
              TextField(
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.start,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                controller: basicController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  contentPadding: !context.watch<PreferenceService>().isEn()
                      ? EdgeInsets.only(bottom: 18.h, right: 2.h, top: 1.h)
                      : EdgeInsets.only(bottom: 18.h, left: 2.h, top: 1.h),
                  isDense: true,
                  hintText: "fix this",
                  hintStyle: GoogleFonts.cairo(color: Colors.grey.shade600),
                  alignLabelWithHint: true,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: BasicButtonRoute(
                  route: (context) => const ConfirmRatingView(
                    route: MyDatesView(),
                    text: "fix this",
                  ),
                  color: AppColors.lightBlue,
                  textColor: Colors.white,
                  text: "fix this",
                  borderColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
