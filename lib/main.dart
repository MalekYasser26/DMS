import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/features/intro/presentation/views/splash_view.dart';
import 'package:doctor_management_system/features/user/dates/manager/booking_customer_reservations_provider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  final APIService apiService = APIService();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => apiService),
        ChangeNotifierProvider(create: (_) => PreferenceService()),
        ChangeNotifierProvider(create: (_) => BookingReservationProvider(apiService)),
      ],
      child: const DoctorManagementSystem(),
    ),
  );
}

class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final preferenceService = getPreferenceService(context);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: preferenceService.isEn() ? "DMS" : "نظام إدارة للأطباء",
          locale: preferenceService.locale,
          supportedLocales: L10n.supportedLocales,
          localizationsDelegates: L10n.localizationsDelegates,
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
        );
      },
    );
  }
}
