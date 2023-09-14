import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SharedServices extends ChangeNotifier {
  int patientNum = 2;
  bool? isNavBoxActive;

  void addPatient() {
    patientNum++;
    notifyListeners();
  }

  void removePatient() {
    patientNum--;
    notifyListeners();
  }


}

SharedServices getSharedServices(BuildContext context) =>
    Provider.of<SharedServices>(context, listen: false);
