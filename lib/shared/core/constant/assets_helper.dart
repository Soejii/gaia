class AssetsHelper {
  static String imgLogo = img("img_logo.png");
  static String imgLogoName = img("img_logo_name.png");
  static String imgProfilePlaceholder = img("img_profile_placeholder.png");

  static String icHome = icon('ic_beranda_home.svg');
  static String icActivity = icon('ic_activity_home.svg');
  static String icChat = icon('ic_chat_home.svg');
  static String icProfile = icon('ic_profile_home.svg');

  static String icon(String name) {
    return "assets/icons/$name";
  }

  static String img(String name) {
    return "assets/images/$name";
  }
}
