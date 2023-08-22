import 'package:doctor_management_system/features/home_view/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorManagementSystem());
}
class DoctorManagementSystem extends StatelessWidget {
  const DoctorManagementSystem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
