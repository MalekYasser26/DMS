import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferenceService extends ChangeNotifier {
  String _locale = "en";

  Locale get locale => Locale(_locale);

  void changeLocale() {
    isEn() == true ? _locale = 'ar' : _locale = 'en';
    notifyListeners();
  }

  bool isEn() => _locale == "en";
}

PreferenceService getPreferenceService(BuildContext context , {bool listen = true}) =>
    Provider.of<PreferenceService>(context, listen: listen);
