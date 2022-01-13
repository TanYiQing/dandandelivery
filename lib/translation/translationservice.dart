import 'package:dandandelivery/translation/english.dart';
import 'package:dandandelivery/translation/mandarin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  //static Locale? get locale => Locale('zh', 'Hans');
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_Hans': zh_Hans,
      };
}
