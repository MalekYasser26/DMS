// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The clinic offers many specializations in many fields`
  String get onBoardingText {
    return Intl.message(
      'The clinic offers many specializations in many fields',
      name: 'onBoardingText',
      desc: '',
      args: [],
    );
  }

  /// `Rate services`
  String get rateService {
    return Intl.message(
      'Rate services',
      name: 'rateService',
      desc: '',
      args: [],
    );
  }

  /// `Waiting queue`
  String get queueWait {
    return Intl.message(
      'Waiting queue',
      name: 'queueWait',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Quick booking`
  String get quickBooking {
    return Intl.message(
      'Quick booking',
      name: 'quickBooking',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get greeting {
    return Intl.message(
      'Welcome back',
      name: 'greeting',
      desc: '',
      args: [],
    );
  }

  /// `Fill your data`
  String get fillData {
    return Intl.message(
      'Fill your data',
      name: 'fillData',
      desc: '',
      args: [],
    );
  }

  /// `ID number`
  String get id {
    return Intl.message(
      'ID number',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get noAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get registerNow {
    return Intl.message(
      'Register now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `What is your rating for our services?`
  String get whatIsYourRating {
    return Intl.message(
      'What is your rating for our services?',
      name: 'whatIsYourRating',
      desc: '',
      args: [],
    );
  }

  /// `Help us know your opinion to improve our services`
  String get helpUsDevelop {
    return Intl.message(
      'Help us know your opinion to improve our services',
      name: 'helpUsDevelop',
      desc: '',
      args: [],
    );
  }

  /// `Choose the clinic you want to rate.`
  String get chooseClinic {
    return Intl.message(
      'Choose the clinic you want to rate.',
      name: 'chooseClinic',
      desc: '',
      args: [],
    );
  }

  /// `Rating Details`
  String get rateDetails {
    return Intl.message(
      'Rating Details',
      name: 'rateDetails',
      desc: '',
      args: [],
    );
  }

  /// `Add additional details to your rating...`
  String get addRateDetails {
    return Intl.message(
      'Add additional details to your rating...',
      name: 'addRateDetails',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Rating submitted successfully`
  String get ratingDone {
    return Intl.message(
      'Rating submitted successfully',
      name: 'ratingDone',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your rating.\nWe wish you a speedy recovery.`
  String get thxRating {
    return Intl.message(
      'Thank you for your rating.\nWe wish you a speedy recovery.',
      name: 'thxRating',
      desc: '',
      args: [],
    );
  }

  /// `Return to the home page`
  String get returnHome {
    return Intl.message(
      'Return to the home page',
      name: 'returnHome',
      desc: '',
      args: [],
    );
  }

  /// `If you have any inquiries, please contact us at `
  String get inquiries {
    return Intl.message(
      'If you have any inquiries, please contact us at ',
      name: 'inquiries',
      desc: '',
      args: [],
    );
  }

  /// `00227751003`
  String get inquiryNum {
    return Intl.message(
      '00227751003',
      name: 'inquiryNum',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to our waiting queue`
  String get welcomeToQueue {
    return Intl.message(
      'Welcome to our waiting queue',
      name: 'welcomeToQueue',
      desc: '',
      args: [],
    );
  }

  /// `Ahead of you`
  String get ahead {
    return Intl.message(
      'Ahead of you',
      name: 'ahead',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients {
    return Intl.message(
      'Patients',
      name: 'patients',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
