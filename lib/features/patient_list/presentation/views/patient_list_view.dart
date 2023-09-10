import 'package:doctor_management_system/core/constants/app_colors.dart';
import 'package:doctor_management_system/data/patient_list_view_temp_data.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/add_note_confirm_view.dart';
import 'package:doctor_management_system/features/confirmation/presentation/views/vacation_confirm_view.dart';
import 'package:doctor_management_system/features/dates/presentation/views/widgets/absent_or_present.dart';
import 'package:doctor_management_system/features/patient_details/presentation/views/patient_details_view.dart';
import 'package:doctor_management_system/features/results/presentation/views/results_view.dart';
import 'package:doctor_management_system/features/results/presentation/widgets/table_calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class PatientListView extends StatefulWidget {
  const PatientListView({Key? key}) : super(key: key);

  @override
  State<PatientListView> createState() => _PatientListViewState();
}

class _PatientListViewState extends State<PatientListView> {
  final listItem = ["ساعة", "ساعتين", "ساعات 3", "ساعات 4", "ساعات 5"];
  String? valueChoose;

  final list = ["اليوم", "غدا", "تخصيص يوم"];
  String? valueChoice;

  int? selectedRadio = 0;
  int? currIndex;

  int currentIndex = 0;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                            padding: const EdgeInsets.all(8.0),
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
                        "قائمة المرضى",
                        style: GoogleFonts.cairo(
                          fontSize: 20,
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
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/logout.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        height: 7.h,
                        width: 72.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffD7DFE9).withOpacity(.3),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0, left: 5),
                              child: Icon(
                                Icons.search,
                                color: Color(0xffA3A3A3),
                              ),
                            ),
                            Text(
                              " ابحث",
                              style: GoogleFonts.cairo(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color(0xffB5B7C4),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ResultsView()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          height: 7.h,
                          width: 16.w,
                          decoration:
                              const BoxDecoration(color: Color(0xff159BAD)),
                          child: Image.asset("assets/images/filtered.png"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 6.h,
                        width: 43.5.w,
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
                            "طلب تاخير",
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
                          items: listItem.map(
                            (valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        height: 6.h,
                        width: 43.5.w,
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
                            "طلب اجازة",
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
                              if (value == list[2]) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'طلب اجازة',
                                                style: GoogleFonts.cairo(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
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
                                          content: SizedBox(
                                            width: double.infinity,
                                            height: 60.h,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  const Divider(thickness: 1),
                                                  SizedBox(height: 1.h),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "الرجاء تحديد اليوم المراد طلب الاجازة فيه",
                                                        style:
                                                            GoogleFonts.cairo(
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 2.h),
                                                  SizedBox(
                                                    width: 400.h,
                                                    height: 40.h,
                                                    child:
                                                        const TableCalendarItem(),
                                                  ),
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
                                                                    const VacationConfirmView(
                                                                        route:
                                                                            PatientListView())),
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
                                                                "تأكيد",
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
                                                                "الغاء",
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
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }
                            });
                          },
                          items: list.map(
                            (valueOfItem) {
                              return DropdownMenuItem(
                                value: valueOfItem,
                                child: Text(valueOfItem),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      children: [
                        Text(
                          "الاسم",
                          style: GoogleFonts.cairo(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff404040),
                            ),
                          ),
                        ),
                        SizedBox(width: 15.h),
                        Image.asset(
                          "assets/images/list.png",
                          height: 3.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(
                            currentIndex == 0
                                ? "الحالة"
                                : currentIndex == 1
                                    ? "التاريخ"
                                    : currentIndex == 2
                                        ? "الحجز"
                                        : "اول مره؟",
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff404040),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/images/list.png",
                          height: 3.h,
                        ),
                        SizedBox(width: 1.h),
                        SizedBox(
                          height: 6.h,
                          width: 6.w,
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                if (currentIndex >= 1) {
                                  currentIndex = currentIndex - 1;
                                }
                              });
                            },
                            shape: const CircleBorder(),
                            color: const Color(0xffF5F7F9),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1.h),
                        SizedBox(
                          height: 6.h,
                          width: 6.w,
                          child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                if (currentIndex <= 2) {
                                  currentIndex = currentIndex + 1;
                                }
                              });
                            },
                            shape: const CircleBorder(),
                            color: const Color(0xffF5F7F9),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          physics: const ClampingScrollPhysics(),
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
                                              Icons
                                                  .check_circle_outline_rounded,
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
                          physics: const ClampingScrollPhysics(),
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
                                                  absentPresentPatientList[
                                                      index],
                                              h: 4.h,
                                              w: 1.h,
                                            ),
                                          ),
                                          const Spacer(),
                                          Expanded(
                                            child: InkWell(
                                              onTap: () {},
                                              child: Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: PopupMenuButton<String>(
                                                  itemBuilder:
                                                      (BuildContext context) {
                                                    return <PopupMenuItem<
                                                        String>>[
                                                      PopupMenuItem<String>(
                                                        value: 'item1',
                                                        child: Text(
                                                          'رؤية التفاصيل',
                                                          style: GoogleFonts
                                                              .cairo(),
                                                        ),
                                                      ),
                                                      PopupMenuItem<String>(
                                                        value: 'item2',
                                                        child: Text(
                                                          'رؤية الملاحظات',
                                                          style: GoogleFonts
                                                              .cairo(),
                                                        ),
                                                      ),
                                                      PopupMenuItem<String>(
                                                        value: 'item3',
                                                        child: Text(
                                                          'اضافة ملاحظة',
                                                          style: GoogleFonts
                                                              .cairo(),
                                                        ),
                                                      ),
                                                      if (index ==
                                                          selectedRadio)
                                                        PopupMenuItem<String>(
                                                          value: 'item4',
                                                          child: Text(
                                                            'انهاء وقت المريض',
                                                            style: GoogleFonts
                                                                .cairo(),
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
                                                    } else if (value ==
                                                        'item2') {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                const PatientDetailsView(
                                                                    initialIndex:
                                                                        2),
                                                          ));
                                                    } else if (value ==
                                                        'item3') {
                                                      showAlertDialog(context);
                                                    } else if (value ==
                                                        'item4') {
                                                      selectedRadio =
                                                          (selectedRadio! + 1);
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/threedots.png',
                                                    height: 1.h,
                                                  ),
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
                                        height: 7.h,
                                        color: selectedRadio == index
                                            ? AppColors.lightBlue
                                                .withOpacity(0.1)
                                            : Colors.transparent,
                                        child: Directionality(
                                          textDirection: TextDirection.ltr,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 2.w),
                                                child: Text(
                                                  "21 Aug, Mon - 09:20 Am",
                                                  style: GoogleFonts.cairo(
                                                    textStyle: TextStyle(
                                                      fontSize: 1.9.h,
                                                    ),
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
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
                                            child: Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 2.w,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          onlineOrOffline[
                                                              index],
                                                          style:
                                                              GoogleFonts.cairo(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 1.9.h,
                                                            ),
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        Expanded(
                                                            child: InkWell(
                                                          onTap: () {},
                                                          child: Directionality(
                                                            textDirection:
                                                                TextDirection
                                                                    .rtl,
                                                            child:
                                                                PopupMenuButton<
                                                                    String>(
                                                              itemBuilder:
                                                                  (BuildContext
                                                                      context) {
                                                                return <PopupMenuItem<
                                                                    String>>[
                                                                  PopupMenuItem<
                                                                      String>(
                                                                    value:
                                                                        'item1',
                                                                    child: Text(
                                                                      'رؤية التفاصيل',
                                                                      style: GoogleFonts
                                                                          .cairo(),
                                                                    ),
                                                                  ),
                                                                  PopupMenuItem<
                                                                      String>(
                                                                    value:
                                                                        'item2',
                                                                    child: Text(
                                                                      'رؤية الملاحظات',
                                                                      style: GoogleFonts
                                                                          .cairo(),
                                                                    ),
                                                                  ),
                                                                  PopupMenuItem<
                                                                      String>(
                                                                    value:
                                                                        'item3',
                                                                    child: Text(
                                                                      'اضافة ملاحظة',
                                                                      style: GoogleFonts
                                                                          .cairo(),
                                                                    ),
                                                                  ),
                                                                  if (index ==
                                                                      selectedRadio)
                                                                    PopupMenuItem<
                                                                        String>(
                                                                      value:
                                                                          'item4',
                                                                      child:
                                                                          Text(
                                                                        'انهاء وقت المريض',
                                                                        style: GoogleFonts
                                                                            .cairo(),
                                                                      ),
                                                                    )
                                                                ];
                                                              },
                                                              onSelected:
                                                                  (String
                                                                      value) {
                                                                if (value ==
                                                                    'item1') {
                                                                  Navigator.push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              const PatientDetailsView(initialIndex: 0)));
                                                                } else if (value ==
                                                                    'item2') {
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                      builder: (context) =>
                                                                          const PatientDetailsView(
                                                                              initialIndex: 2),
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
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/threedots.png',
                                                                height: 1.h,
                                                              ),
                                                            ),
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
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
                                            child: Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 2.w),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          consultOrCheck[index],
                                                          style:
                                                              GoogleFonts.cairo(
                                                            textStyle:
                                                                TextStyle(
                                                              fontSize: 1.9.h,
                                                            ),
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        Expanded(
                                                          child: InkWell(
                                                            onTap: () {},
                                                            child:
                                                                Directionality(
                                                              textDirection:
                                                                  TextDirection
                                                                      .rtl,
                                                              child:
                                                                  PopupMenuButton<
                                                                      String>(
                                                                itemBuilder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return <PopupMenuItem<
                                                                      String>>[
                                                                    PopupMenuItem<
                                                                        String>(
                                                                      value:
                                                                          'item1',
                                                                      child: Text(
                                                                          'رؤية التفاصيل',
                                                                          style:
                                                                              GoogleFonts.cairo()),
                                                                    ),
                                                                    PopupMenuItem<
                                                                        String>(
                                                                      value:
                                                                          'item2',
                                                                      child: Text(
                                                                          'رؤية الملاحظات',
                                                                          style:
                                                                              GoogleFonts.cairo()),
                                                                    ),
                                                                    PopupMenuItem<
                                                                        String>(
                                                                      value:
                                                                          'item3',
                                                                      child: Text(
                                                                          'اضافة ملاحظة',
                                                                          style:
                                                                              GoogleFonts.cairo()),
                                                                    ),
                                                                    if (index ==
                                                                        selectedRadio)
                                                                      PopupMenuItem<
                                                                          String>(
                                                                        value:
                                                                            'item4',
                                                                        child:
                                                                            Text(
                                                                          'انهاء وقت المريض',
                                                                          style:
                                                                              GoogleFonts.cairo(),
                                                                        ),
                                                                      )
                                                                  ];
                                                                },
                                                                onSelected:
                                                                    (String
                                                                        value) {
                                                                  if (value ==
                                                                      'item1') {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                const PatientDetailsView(initialIndex: 0)));
                                                                  } else if (value ==
                                                                      'item2') {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                const PatientDetailsView(initialIndex: 2)));
                                                                  } else if (value ==
                                                                      'item3') {
                                                                    showAlertDialog(
                                                                        context);
                                                                  } else if (value ==
                                                                      'item4') {
                                                                    selectedRadio =
                                                                        (selectedRadio! +
                                                                            1);
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                },
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/threedots.png',
                                                                  height: 1.h,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
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
      ),
    );
  }
}

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
            height: 40.h,
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
                              builder: (context) => AddNoteConfirmView(
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
        ),
      );
    },
  );
}
