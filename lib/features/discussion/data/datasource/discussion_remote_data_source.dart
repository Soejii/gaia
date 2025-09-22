import 'package:dio/dio.dart';
import 'package:gaia/features/discussion/data/models/discussion_model.dart';

class DiscussionRemoteDataSource {
  final Dio _dio;
  DiscussionRemoteDataSource(this._dio);

  Future<List<DiscussionModel>> getListDiscussion(
    String type,
    int page, {
    int? idSubject,
  }) async {
    final res = await _dio.get(
      '/discuss/list/$type',
      queryParameters: {
        if (idSubject != null) 'subject_id': idSubject,
        'perPage': 20,
        'page': page
      },
    );
    final data =
        (res.data as Map<String, dynamic>)['data']['data'] as List<dynamic>;
    return data
        .map(
          (e) => DiscussionModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }
}
