import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/core/constants/assets/assets_icons.dart';
import 'package:doctor_management_system/data/my_dates_view_temp_data.dart';
import 'package:doctor_management_system/features/booking/presentation/views/booking_intro_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/widgets/appointment_booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyDatesView extends StatefulWidget {
  const MyDatesView({Key? key}) : super(key: key);

  @override
  State<MyDatesView> createState() => _MyDatesViewState();
}

class _MyDatesViewState extends State<MyDatesView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "مواعيدي",
                                style: GoogleFonts.cairo(
                                  color: Colors.black,
                                  fontSize: 3.h,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BookingIntroView(),
                                  ),
                                ),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.lightBlue,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 2.h,
                                      vertical: 1.w,
                                    ),
                                    child: Row(children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 3.h,
                                      ),
                                      Text(
                                        " اضافة موعد",
                                        style: GoogleFonts.cairo(
                                          fontSize: 2.h,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  SearchBar(
                    hintStyle: MaterialStatePropertyAll(
                      GoogleFonts.cairo(
                        color: Colors.grey,
                        fontSize: 2.5.h,
                      ),
                    ),
                    leading:SvgPicture.asset(
                      AssetsIcons.searchIcon
                    ),
                    hintText: "ابحث",
                    shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder()),
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(
                        AppColors.blueGrey.withOpacity(0.4)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                    child: Container(
                      height: 6.5.h,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TabBar(
                          indicatorColor: AppColors.green,
                          unselectedLabelStyle: GoogleFonts.cairo(
                              color: AppColors.green, fontSize: 3.h),
                          labelColor: AppColors.green,
                          unselectedLabelColor: Colors.black,
                          labelStyle: GoogleFonts.cairo(
                            color: AppColors.green,
                            fontSize: 3.h,
                            fontWeight: FontWeight.bold,
                          ),
                          tabs: const [
                            Tab(
                              text: "السابقة",
                            ),
                            Tab(
                              text: "الآتية",
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: ListView.separated(
                                physics: const ClampingScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    AppointmentBooking(
                                  name: names[index],
                                  address: "147 النزهة, ش المطار",
                                  date: "21 Aug, Mon - 09:20 am",
                                  firstTime: "كشف",
                                  isAbsent: absentPresentMyDates[index],
                                  isNext: true,
                                ),
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 1.h),
                                itemCount: names.length,
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: ListView.separated(
                                physics: const ClampingScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    AppointmentBooking(
                                  name: names[index],
                                  address: "147 النزهة, ش المطار",
                                  date: "21 Aug, Mon - 09:20 am",
                                  firstTime: "كشف",
                                  isAbsent: absentPresentMyDates[index],
                                  isNext: false,
                                ),
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 1.h),
                                itemCount: names.length,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
