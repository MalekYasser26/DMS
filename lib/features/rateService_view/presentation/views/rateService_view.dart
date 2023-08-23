import 'package:flutter/material.dart';

class RateSeviceView extends StatefulWidget {
  const RateSeviceView({Key? key}) : super(key: key);

  @override
  State<RateSeviceView> createState() => _RateSeviceViewState();
}

class _RateSeviceViewState extends State<RateSeviceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("RATE SERVICE")),
    );
  }
}
