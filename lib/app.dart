import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_project_template/bindings/app_bindings.dart';
import 'package:getx_flutter_project_template/navigation/app_pages.dart';
import 'package:getx_flutter_project_template/theme/app_theme.dart';
import 'package:getx_flutter_project_template/translations/translations.dart';

class TemplateApp extends StatelessWidget {
  const TemplateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      translations: AppTranslations(),
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocales.locales,
      theme: appTheme,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.home,
      defaultTransition: Transition.native,
    );
  }
}
