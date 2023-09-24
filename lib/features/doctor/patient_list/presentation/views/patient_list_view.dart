import 'package:doctor_management_system/core/theme/app_colors.dart';
import 'package:doctor_management_system/core/constants/assets/assets_icons.dart';
import 'package:doctor_management_system/core/Widgets/absent_or_present.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/data/patient_list_view_temp_data.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/one_button_confirm_view.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/two_buttons_confirm_view.dart';
import 'package:doctor_management_system/features/doctor/patient_details/presentation/views/patient_details_view.dart';
import 'package:doctor_management_system/features/doctor/results/presentation/views/results_view.dart';
import 'package:doctor_management_system/features/doctor/results/presentation/widgets/table_calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PatientListView extends StatefulWidget {
  const PatientListView({Key? key}) : super(key: key);

  @override
  State<PatientListView> createState() => _PatientListViewState();
}

class _PatientListViewState extends State<PatientListView> {
  String? valueChoose;

  String? valueChoice;

  int? selectedRadio = 0;
  int? currIndex;

  int currentIndex = 0;
  String? text;

  @override
  Widget build(BuildContext context) {
    final locale = getL10n(context);
    final getPref = getPreferenceService(context);
    final listOfDays = [locale.today, locale.tomorrow, locale.chooseADay];
    final listOfTime = [
      locale.hour,
      locale.twoHours,
      locale.threeHours,
      locale.fourHours,
      locale.fiveHours
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              children: [
                Row(
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
                          padding: EdgeInsets.all(2.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Text(
                      locale.patientList,
                      style: GoogleFonts.cairo(
                        fontSize: 2.5.h,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff171717),
                      ),
                    ),
                    const Spacer(),
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
                            padding: EdgeInsets.all(2.w),
                            child: SvgPicture.asset(
                              AssetsIcons.guidanceIcon,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.all(2.w),
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffD7DFE9).withOpacity(.3),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(right: 5.0, left: 5),
                              child: SvgPicture.asset(
                                AssetsIcons.searchIcon,
                              ),
                            ),
                            Text(
                              " ${locale.search}",
                              style: GoogleFonts.cairo(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color(0xffB5B7C4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ResultsView()));
                        },
                        child: Container(
                            padding: EdgeInsets.all(2.w),
                            height: 7.h,
                            decoration:
                            const BoxDecoration(color: Color(0xff159BAD)),
                            child: SvgPicture.asset(
                              AssetsIcons.sliderIcon,
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDFDFDF)),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 24,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff151515),
                          ),
                          underline: const SizedBox(),
                          hint: Text(
                            locale.delayRequest,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                          ),
                          value: valueChoose,
                          onChanged: (newValue) {
                            setState(() {
                              valueChoose = newValue;
                            });
                          },
                          items: listOfTime.map(
                                (valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(
                                  valueItem,
                                  style: GoogleFonts.cairo(
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff404040),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffDFDFDF),
                          ),
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 24,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff151515),
                          ),
                          underline: const SizedBox(),
                          hint: Text(
                            locale.holidayRequest,
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                          ),
                          value: valueChoice,
                          onChanged: (value) {
                            setState(() {
                              valueChoice = value;
                              if (value == listOfDays[2]) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                          child: SingleChildScrollView(
                                            child: Padding(
                                              padding: EdgeInsets.all(6.w),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          locale.chooseADay,
                                                          style: GoogleFonts.cairo(
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () =>
                                                            Navigator.pop(context),
                                                        child: const Icon(
                                                          Icons.close,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      const Divider(thickness: 1),
                                                      SizedBox(height: 1.h),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              locale
                                                                  .specifyDayPlease,
                                                              textAlign:
                                                              TextAlign.center,
                                                              softWrap: true,
                                                              style:
                                                              GoogleFonts.cairo(
                                                                textStyle:
                                                                const TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                                  color: Color(
                                                                      0xff404040),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 2.h),
                                                      FractionallySizedBox(
                                                          widthFactor: 1,
                                                          child: TableCalendarItem()),
                                                      SizedBox(height: 3.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap: () =>
                                                                  Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder: (context) =>
                                                                          OneButtonConfirmView(
                                                                            text: locale
                                                                                .holidayRequestedSuccess,
                                                                            subText: locale
                                                                                .respondShortly,
                                                                            buttonText: locale
                                                                                .returnHome,
                                                                            route:
                                                                            const PatientListView(),
                                                                          ),
                                                                    ),
                                                                  ),
                                                              child: Container(
                                                                height: 5.h,
                                                                decoration:
                                                                const BoxDecoration(
                                                                  color: AppColors
                                                                      .lightBlue,
                                                                ),
                                                                child: Center(
                                                                  child: Text(
                                                                    locale.confirm,
                                                                    style:
                                                                    GoogleFonts
                                                                        .cairo(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: 2.h,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 1.w),
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap: () =>
                                                                  Navigator.pop(
                                                                      context),
                                                              child: Container(
                                                                height: 5.h,
                                                                decoration:
                                                                BoxDecoration(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade400),
                                                                child: Center(
                                                                  child: Text(
                                                                    locale.cancel,
                                                                    style:
                                                                    GoogleFonts
                                                                        .cairo(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize: 2.h,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ));
                                    });
                              }
                            });
                          },
                          items: listOfDays.map(
                                (valueOfItem) {
                              return DropdownMenuItem(
                                value: valueOfItem,
                                child: Text(
                                  valueOfItem,
                                  style: GoogleFonts.cairo(
                                    textStyle: TextStyle(
                                      fontSize: 2.h,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Padding(
                  padding: getPref.isEn()
                      ? EdgeInsets.only(left: 2.w)
                      : EdgeInsets.only(right: 2.w),
                  child: Row(
                    children: [
                      Text(
                        locale.name,
                        style: GoogleFonts.cairo(
                          textStyle: TextStyle(
                            fontSize: 2.h,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff404040),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.h),
                      SvgPicture.asset(
                        AssetsIcons.arrowDownArrowUpIcon,
                      ),
                      Padding(
                        padding: getPref.isEn()
                            ? EdgeInsets.only(left: 2.w)
                            : EdgeInsets.only(right: 2.w),
                        child: Text(
                          currentIndex == 0
                              ? locale.status
                              : currentIndex == 1
                              ? locale.date
                              : currentIndex == 2
                              ? locale.booking
                              : locale.firstTime,
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff404040),
                            ),
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        AssetsIcons.arrowDownArrowUpIcon,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (currentIndex >= 1) {
                                  currentIndex = currentIndex - 1;
                                }
                              });
                            },
                            child: CircleAvatar(
                              minRadius: 1.5.h,
                              maxRadius: 2.h,
                              backgroundColor: const Color(0xffF5F7F9),
                              child: const Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.h),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (currentIndex <= 2) {
                                  currentIndex = currentIndex + 1;
                                }
                              });
                            },
                            child: CircleAvatar(
                              minRadius: 1.5.h,
                              maxRadius: 2.h,
                              backgroundColor: const Color(0xffF5F7F9),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          currIndex = index;
                          return Container(
                            height: 7.h,
                            color: selectedRadio == index
                                ? AppColors.lightBlue.withOpacity(0.1)
                                : Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: selectedRadio != null &&
                                      index < selectedRadio!
                                      ? IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.check_circle_outline_rounded,
                                      color: Colors.grey,
                                    ),
                                  )
                                      : Transform.scale(
                                    scale: 1.1,
                                    child: Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(100),
                                      ),
                                      side: MaterialStateBorderSide
                                          .resolveWith(
                                            (states) => BorderSide(
                                          color: selectedRadio == index
                                              ? AppColors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                      fillColor:
                                      const MaterialStatePropertyAll(
                                        Colors.transparent,
                                      ),
                                      checkColor: AppColors.green,
                                      activeColor: AppColors.lightBlue,
                                      value: selectedRadio == index,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ),
                                Text(
                                  patientList[index],
                                  style: GoogleFonts.cairo(
                                    textStyle: TextStyle(
                                      fontSize: 2.h,
                                    ),
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 2.w),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 2.w, height: 1.9.h),
                        itemCount: patientList.length,
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          currIndex = index;
                          return currentIndex == 0
                              ? Container(
                            height: 7.h,
                            color: selectedRadio == index
                                ? AppColors.lightBlue.withOpacity(0.1)
                                : Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AbsentOrPresent(
                                      isAbsent:
                                      absentPresentPatientList[index],
                                      h: 4.h,
                                      w: 1.h,
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: PopupMenuButton<String>(
                                        itemBuilder:
                                            (BuildContext context) {
                                          return <PopupMenuItem<String>>[
                                            PopupMenuItem<String>(
                                              value: 'item1',
                                              child: Text(
                                                locale.viewDetails,
                                                style:
                                                GoogleFonts.cairo(),
                                              ),
                                            ),
                                            PopupMenuItem<String>(
                                              value: 'item2',
                                              child: Text(
                                                locale.viewNotes,
                                                style:
                                                GoogleFonts.cairo(),
                                              ),
                                            ),
                                            PopupMenuItem<String>(
                                              value: 'item3',
                                              child: Text(
                                                locale.addNote,
                                                style:
                                                GoogleFonts.cairo(),
                                              ),
                                            ),
                                            if (index == selectedRadio)
                                              PopupMenuItem<String>(
                                                value: 'item4',
                                                child: Text(
                                                  locale.endPatientTime,
                                                  style:
                                                  GoogleFonts.cairo(),
                                                ),
                                              )
                                          ];
                                        },
                                        onSelected: (String value) {
                                          if (value == 'item1') {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                  const PatientDetailsView(
                                                      initialIndex:
                                                      0),
                                                ));
                                          } else if (value == 'item2') {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                  const PatientDetailsView(
                                                      initialIndex:
                                                      2),
                                                ));
                                          } else if (value == 'item3') {
                                            showAlertDialog(context);
                                          } else if (value == 'item4') {
                                            selectedRadio =
                                            (selectedRadio! + 1);
                                            setState(() {});
                                          }
                                        },
                                        child: SvgPicture.asset(
                                          AssetsIcons.groupIcon,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                              : currentIndex == 1
                              ? Container(
                            padding:
                            EdgeInsets.symmetric(horizontal: 2.w),
                            alignment: getPref.isEn()
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            height: 7.h,
                            color: selectedRadio == index
                                ? AppColors.lightBlue.withOpacity(0.1)
                                : Colors.transparent,
                            child: Text(
                              softWrap: true,
                              "21 Aug, Mon - 09:20 Am",
                              style: GoogleFonts.cairo(
                                color: Colors.black,
                                fontSize: 1.8.h,
                              ),
                            ),
                          )
                              : currentIndex == 2
                              ? Container(
                            height: 7.h,
                            color: selectedRadio == index
                                ? AppColors.lightBlue
                                .withOpacity(0.1)
                                : Colors.transparent,
                            child: Padding(
                              padding: getPref.isEn()
                                  ? EdgeInsets.only(left: 2.w)
                                  : EdgeInsets.only(right: 2.w),
                              child: Row(
                                children: [
                                  Text(
                                    onlineOrOffline[index],
                                    style: GoogleFonts.cairo(
                                      textStyle: TextStyle(
                                        fontSize: 1.9.h,
                                      ),
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                      child: InkWell(
                                        onTap: () {},
                                        child: PopupMenuButton<
                                            String>(
                                            itemBuilder: (BuildContext
                                            context) {
                                              return <PopupMenuItem<
                                                  String>>[
                                                PopupMenuItem<String>(
                                                  value: 'item1',
                                                  child: Text(
                                                    locale
                                                        .viewDetails,
                                                    style: GoogleFonts
                                                        .cairo(),
                                                  ),
                                                ),
                                                PopupMenuItem<String>(
                                                  value: 'item2',
                                                  child: Text(
                                                    locale.viewNotes,
                                                    style: GoogleFonts
                                                        .cairo(),
                                                  ),
                                                ),
                                                PopupMenuItem<String>(
                                                  value: 'item3',
                                                  child: Text(
                                                    locale.addNote,
                                                    style: GoogleFonts
                                                        .cairo(),
                                                  ),
                                                ),
                                                if (index ==
                                                    selectedRadio)
                                                  PopupMenuItem<
                                                      String>(
                                                    value: 'item4',
                                                    child: Text(
                                                      locale
                                                          .endPatientTime,
                                                      style:
                                                      GoogleFonts
                                                          .cairo(),
                                                    ),
                                                  )
                                              ];
                                            },
                                            onSelected:
                                                (String value) {
                                              if (value == 'item1') {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                        const PatientDetailsView(
                                                            initialIndex:
                                                            0)));
                                              } else if (value ==
                                                  'item2') {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                    const PatientDetailsView(
                                                        initialIndex:
                                                        2),
                                                  ),
                                                );
                                              } else if (value ==
                                                  'item3') {
                                                showAlertDialog(
                                                    context);
                                              } else if (value ==
                                                  'item4') {
                                                selectedRadio =
                                                (selectedRadio! +
                                                    1);
                                                setState(() {});
                                              }
                                            },
                                            child: SvgPicture.asset(
                                              AssetsIcons.groupIcon,
                                            )),
                                      ))
                                ],
                              ),
                            ),
                          )
                              : Container(
                            height: 7.h,
                            color: selectedRadio == index
                                ? AppColors.lightBlue
                                .withOpacity(0.1)
                                : Colors.transparent,
                            child: Padding(
                              padding: getPref.isEn()
                                  ? EdgeInsets.only(left: 2.w)
                                  : EdgeInsets.only(right: 2.w),
                              child: Row(
                                children: [
                                  Text(
                                    consultOrCheck[index],
                                    style: GoogleFonts.cairo(
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    child: InkWell(
                                      onTap: () {},
                                      child: PopupMenuButton<
                                          String>(
                                          itemBuilder:
                                              (BuildContext
                                          context) {
                                            return <PopupMenuItem<
                                                String>>[
                                              PopupMenuItem<
                                                  String>(
                                                value: 'item1',
                                                child: Text(
                                                    locale
                                                        .viewDetails,
                                                    style: GoogleFonts
                                                        .cairo()),
                                              ),
                                              PopupMenuItem<
                                                  String>(
                                                value: 'item2',
                                                child: Text(
                                                    locale
                                                        .viewNotes,
                                                    style: GoogleFonts
                                                        .cairo()),
                                              ),
                                              PopupMenuItem<
                                                  String>(
                                                value: 'item3',
                                                child: Text(
                                                    locale
                                                        .addNote,
                                                    style: GoogleFonts
                                                        .cairo()),
                                              ),
                                              if (index ==
                                                  selectedRadio)
                                                PopupMenuItem<
                                                    String>(
                                                  value: 'item4',
                                                  child: Text(
                                                    locale
                                                        .endPatientTime,
                                                    style: GoogleFonts
                                                        .cairo(),
                                                  ),
                                                )
                                            ];
                                          },
                                          onSelected:
                                              (String value) {
                                            if (value ==
                                                'item1') {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                      const PatientDetailsView(
                                                          initialIndex:
                                                          0)));
                                            } else if (value ==
                                                'item2') {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                      const PatientDetailsView(
                                                          initialIndex:
                                                          2)));
                                            } else if (value ==
                                                'item3') {
                                              showAlertDialog(
                                                  context);
                                            } else if (value ==
                                                'item4') {
                                              selectedRadio =
                                              (selectedRadio! +
                                                  1);
                                              setState(() {});
                                            }
                                          },
                                          child: SvgPicture.asset(
                                            AssetsIcons.groupIcon,
                                          )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 1.9.h),
                        itemCount: absentPresentPatientList.length,
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
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      final locale = getL10n(context);

      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              locale.addNote,
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
          height: 40.h,
          child: Column(
            children: [
              const Divider(thickness: 1),
              SizedBox(height: 1.h),
              Text(
                locale.addPatientNotes,
                style: GoogleFonts.cairo(fontSize: 1.7.h),
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
                  EdgeInsets.only(bottom: 17.h, right: 2.h, top: 1.h),
                  isDense: true,
                  hintText: locale.addNotesHere,
                  hintStyle: GoogleFonts.cairo(color: Colors.grey.shade600),
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TwoButtonsConfirmView(
                              text: locale.noteAddedSuccess,
                              buttonTxt: locale.returnToPatient,
                              buttonRoute1: (context) =>
                              const PatientListView(),
                              buttonRoute2: (context) =>
                              const PatientListView(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 5.h,
                        decoration: const BoxDecoration(
                          color: AppColors.lightBlue,
                        ),
                        child: Center(
                          child: Text(
                            locale.add,
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
                            locale.cancel,
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 2.h,
                            ),
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
      );
    },
  );
}