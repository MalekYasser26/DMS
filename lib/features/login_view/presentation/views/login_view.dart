import 'package:doctor_management_system/features/dates_view/presentation/views/myDates_view.dart';
import 'package:doctor_management_system/features/login_view/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
   LoginView({Key? key,required this.route}) : super(key: key);
    var route;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:LoginBody(route: route),
    );
  }
}
