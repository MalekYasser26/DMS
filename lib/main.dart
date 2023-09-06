import 'package:doctor_management_system/features/intro/presentation/views/splash_view.dart';
import 'package:doctor_management_system/features/results/providers/calendar_picker_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CalendarPickerProvider()),
  ], child: const DoctorManagementSystem()));
}

class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashView());
      },
    );
  }
}
