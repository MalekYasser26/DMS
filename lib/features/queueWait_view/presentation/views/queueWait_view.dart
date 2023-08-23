import 'package:flutter/material.dart';

class QueueWaitView extends StatefulWidget {
  const QueueWaitView({Key? key}) : super(key: key);

  @override
  State<QueueWaitView> createState() => _QueueWaitViewState();
}

class _QueueWaitViewState extends State<QueueWaitView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("QueueWait")),
    );
  }
}
