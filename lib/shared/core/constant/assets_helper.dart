class AssetsHelper {
  static String imgLogo = img("img_logo.png");
  static String imgLogoName = img("img_logo_name.png");
  static String imgProfilePlaceholder = img("img_profile_placeholder.png");
  static String imgAnnouncementPlaceholder =
      img('img_announcement_placeholder.png');
  static String imgTask = img("img_task.png");
  static String imgQuiz = img("img_quiz.png");

  static String imgHomeButtonMapel = img("img_home_mapel.png");
  static String imgHomeButtonDiskusi = img("img_home_diskusi.png");
  static String imgHomeButtonKehadiran = img("img_home_presensi.png");
  static String imgHomeButtonJadwal = img("img_home_jadwal.png");
  static String imgHomeButtonPengumuman = img("img_home_pengumuman.png");
  static String imgHomeButtonEdutainment = img("img_home_edutainment.png");
  static String imgHomeButtonKeuangan = img("img_home_keuangan.png");
  static String imgHomeButtonCbt = img("img_home_keuangan.png");


  static String imgIpa = img("img_ipa.png");
  static String imgMatematika = img("img_matematika.png");
  static String imgIndonesia = img("img_Indonesia.png");
  static String imgFisika = img("img_fisika.png");
  static String imgBiologi = img("img_biologi.png");
  static String imgSejarah = img("img_sejarah.png");
  static String imgTidakAdaPelajaran = img("img_tidak_ada_pelajaran.png");

  static String imgDataNotFound= img('img_data_not_found.png');
  
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
