import 'package:doctor_management_system/features/doctor_login/presentation/views/clinic.dart';
import 'package:doctor_management_system/features/doctor_login/presentation/views/doctor_login_view.dart';
import 'package:doctor_management_system/features/patientList/presentation/views/patient_list_view.dart';
import 'package:doctor_management_system/features/splash_view/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const DoctorManagementSystem());
}*
class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return  const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: DoctorLoginScreen(),
          ),
        );
      },

    );
  }
}
