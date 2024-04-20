import 'package:grocery_store_app/core/service/shared_pref/pref_keys.dart';
import 'package:grocery_store_app/core/service/shared_pref/shared_pref.dart';

class FontFamilyHelper{
  const FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String geLocalozedFontFamily() {
    final currentLanguage = SharedPref().getString(PrefKeys.language);

    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
