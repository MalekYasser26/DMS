import 'package:doctor_management_system/core/api_service/api_service.dart';
import 'package:doctor_management_system/features/intro/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  final APIService apiService = APIService();
  runApp(
    MultiProvider(
      providers: [
        Provider<APIService>(create: (_)=>apiService),
      ],
      child: const DoctorManagementSystem(),
    ),

  );
}

class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        );
      },
    );
  }
}
