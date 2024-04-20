class FontFamilyHelper{
  const FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';
  //TODO: switch Arabic font and English font
  static String geLocalozedFontFamily() {
    final currentLanguage = "ar";
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
//SharedPref().getString(PrefKeys.language);
