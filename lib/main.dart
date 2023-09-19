import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:doctor_management_system/core/services/preference/preference_service.dart';
import 'package:doctor_management_system/features/intro/presentation/views/splash_view.dart';
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
      ],
      child: const DoctorManagementSystem(),
    ),
  );
}

class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PreferenceService>(
      builder: (context, preference, _) => Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: preference.isEn() ? "DMS" : "نظام إدارة للأطباء",
            locale: preference.locale,
            supportedLocales: L10n.supportedLocales,
            localizationsDelegates: L10n.localizationsDelegates,
            debugShowCheckedModeBanner: false,
            home: const SplashView(),
          );
        },
      ),
    );
  }
}
