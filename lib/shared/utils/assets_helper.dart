class AssetsHelper {
  static String imgLogo = img("img_logo.png");
  static String imgLogoName = img("img_logo_name.png");

  // static String icHome = icon('ic_home.svg');

  static String icon(String name) {
    return "assets/icons/$name";
  }

  static String img(String name) {
    return "assets/images/$name";
  }
}
