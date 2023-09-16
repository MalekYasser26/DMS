import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SharedServices extends ChangeNotifier {
  int patientNum = 2;
  bool isNavBoxActive = false;
  bool isPressed = false;

  void addPatient() {
    patientNum++;
    notifyListeners();
  }

  void removePatient() {
    if (patientNum > 2) {
      patientNum--;
    }
    notifyListeners();
  }

  void toggleNavBoxActive() {
    isNavBoxActive = !isNavBoxActive;
    notifyListeners();
  }
}

SharedServices getSharedServices(BuildContext context) =>
    Provider.of<SharedServices>(context, listen: false);
