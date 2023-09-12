import 'package:doctor_management_system/core/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferenceService extends ChangeNotifier {
  String _locale = "ar";
  Locale get locale => Locale(_locale);

  void changeLocale(String language) {
    if (!L10n.supportedLocales.contains(Locale(language))) return;
    _locale = language;
    notifyListeners();
  }

  bool isEn() {
    return _locale == "en";
  }
}

PreferenceService getPreferenceService(BuildContext context) =>
    Provider.of<PreferenceService>(context, listen: false);
