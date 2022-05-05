import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'locales.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        AppLocales.en.toLanguageTag(): {
          'hello': 'Hello World',
        },
        AppLocales.vi.toLanguageTag(): {
          'hello': 'Chao the gioi :v',
        }
      };
}
