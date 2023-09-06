import 'package:doctor_management_system/core/Widgets/custom_route_button.dart';
import 'package:doctor_management_system/core/Widgets/drop_down_menu.dart';
import 'package:doctor_management_system/core/constants/colors.dart';
import 'package:doctor_management_system/data/rate_service_view_temp_data.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/confirm_rating_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/my_dates_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class RateSeviceView extends StatefulWidget {
  const RateSeviceView({Key? key}) : super(key: key);

  @override
  State<RateSeviceView> createState() => _RateSeviceViewState();
}

class _RateSeviceViewState extends State<RateSeviceView> {
  final TextEditingController basicController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          height: 5.h,
                          width: 5.h,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 5.0,
                              spreadRadius: 1,
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                            )
                          ]),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.only(right: 2.w),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ))),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text("تقييم الخدمة",
                        style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 2.h),
                Text("ما هو تقييمك لخدماتنا؟",
                    style: GoogleFonts.cairo(
                        color: Colors.black,
                        fontSize: 2.5.h,
                        fontWeight: FontWeight.bold)),
                Text(
                    "ساعدنا على معرفة رأيك في خدماتنا للعمل على تطويرنا دائماً",
                    style: GoogleFonts.cairo(
                        color: Colors.grey,
                        fontSize: 1.7.h,
                        fontWeight: FontWeight.w500),
                    softWrap: false),
                SizedBox(height: 2.h),
                Text(
                  "اختر العيادة المراد تقييمها",
                  style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 2.1.h),
                ),
                SizedBox(height: 1.h),
                DropDownMenu(
                    dropList: clinicNameService, icon: Icons.location_on_outlined),
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
                            full: const Icon(Icons.star_rounded,
                                color: AppColors.golden),
                            half: const Icon(Icons.star_rounded,
                                color: AppColors.golden),
                            empty: const Icon(
                              Icons.star_outline_rounded,
                              color: Colors.grey,
                            )),
                        onRatingUpdate: (rating) {
                          setState(() {});
                        },
                      ),
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "تفاصيل التقييم",
                  style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 2.1.h),
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                  onTapOutside: (event) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  controller: basicController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.only(bottom: 18.h, right: 2.h, top: 1.h),
                    isDense: true,
                    hintText: "اضف تفاصيل اخرى لتقييمك اذا اردت..",
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
                          route: MyDatesView(), text: "تم التقييم بنجاح"),
                      color: AppColors.lightBlue,
                      textColor: Colors.white,
                      textSt: "تأكيد",
                      borderColor: Colors.transparent),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
