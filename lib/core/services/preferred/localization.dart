import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Localization extends ChangeNotifier {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void changeLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
  bool isArabic(){
    return Intl.getCurrentLocale()=='en' ;
  }
}