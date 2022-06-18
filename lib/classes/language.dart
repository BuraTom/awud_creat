class Language {
  final int id;
  final String flag;
  final String name;
  final String languageCode;

  Language(this.id, this.flag, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      // Language(1, "🇦🇫", "فارسی", "fa"),
      Language(1, "🇺🇸", "English", "en"),
      // Language(3, "🇸🇦", "اَلْعَرَبِيَّةُ", "ar"),
      // Language(4, "🇮🇳", "हिंदी", "hi"),
      Language(2, "ET", "አማርኛ", "am"),
      // Language(6, "ET", "ትግሪኛ", "ti"),
      // Language(3, "ET", "Afaan Aroomaa", "om")
    ];
  }
}
