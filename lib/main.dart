import 'package:dandandelivery/route.dart';
import 'package:dandandelivery/theme/theme.dart';
import 'package:dandandelivery/translation/translationservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final appData=GetStorage();
void main() async {
  await GetStorage.init();
  runApp(DanDanDelivery());
}

class DanDanDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String language=appData.read("language")??'';
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dan Dan Delivery',
      initialRoute: '/splash',
      getPages: AppRoutes.routes,
      unknownRoute: AppRoutes.unknownRoute,
      //locale: TranslationService.locale,
      locale: Locale(language),
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
    );
  }
}
