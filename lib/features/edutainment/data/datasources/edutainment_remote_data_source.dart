import 'package:dio/dio.dart';
import 'package:gaia/features/edutainment/data/models/edutainment_model.dart';

class EdutainmentRemoteDataSource {
  final Dio _dio;
  EdutainmentRemoteDataSource(this._dio);

  Future<List<EdutainmentModel>> getListEdutainment(
      String? type, int page) async {
    final res = await _dio.get(
      '/magazines',
      queryParameters: {
        'type': type ?? 'all',
        'page': page,
      },
    );
    final data =
        (res.data as Map<String, dynamic>)['data']['data'] as List<dynamic>;
    return data
        .map(
          (e) => EdutainmentModel.fromJson(
            Map<String, dynamic>.from(e as Map),
          ),
        )
        .toList(growable: false);
  }
}
