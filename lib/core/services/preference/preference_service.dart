import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferenceService extends ChangeNotifier {
  String _locale = "en";
  Locale get locale => Locale(_locale);

  void changeLocale() {
    if (isEn()==true) {
      _locale = 'ar';
      notifyListeners();
    } else {
      _locale = 'en' ;
      notifyListeners();
    }
  }

  bool isEn() => _locale == "en";
}
PreferenceService getPreferenceService(BuildContext context) =>
    Provider.of<PreferenceService>(context, listen: false);
