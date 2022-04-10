import 'dart:ui';

import 'package:get/get.dart';

part 'app_messages.dart';
part 'en.dart';
part 'id.dart';

class AppTranslations extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static Locale? get fallbackLocale => const Locale('en');

  @override
  Map<String, Map<String, String>> get keys => {
        'en': en.messages,
        'id': id.messages,
      };
}
