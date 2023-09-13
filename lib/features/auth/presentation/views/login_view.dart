import 'package:doctor_management_system/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final Widget Function(BuildContext) route;

  const LoginView({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(route: route),
    );
  }
}