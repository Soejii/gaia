import 'package:url_launcher/url_launcher.dart';

class ExamAppLauncher {
  static const String _scheme = 'examapp';
  static const String _playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.cbt.sidigs.karna';

  /// Opens the Exam App with the provided [examId], [examType].
  static Future<void> openExam(int examId, String examType) async {
    final uri = Uri(
      scheme: _scheme,
      host: 'exam',
      queryParameters: {
        'id': '$examId',
        'type': examType,
      },
    );
    await _launch(uri);
  }

  // static Future<void> openResult(int resultId) async {
  //   final uri = Uri.parse('$_scheme://result?id=$resultId');
  //   await _launch(uri);
  // }

  // static Future<void> openReview(int reviewId) async {
  //   final uri = Uri.parse('$_scheme://review?id=$reviewId');
  //   await _launch(uri);
  // }

  static Future<void> _launch(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      await launchUrl(
        Uri.parse(_playStoreUrl),
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
