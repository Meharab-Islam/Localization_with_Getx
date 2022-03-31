import 'package:get/get.dart';
import 'package:localization_with_getx/languages/arabic.dart';
import 'package:localization_with_getx/languages/bangla.dart';
import 'package:localization_with_getx/languages/english.dart';

class LanguageModel extends Translations{
  @override
  
  Map<String, Map<String, String>> get keys => {
    'ar_SA': arbi,
    'bn_BD': bangla,
    'en_US': enlish,
  };
  
}