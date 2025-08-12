import 'package:dio/dio.dart';
import 'package:gaia/features/announcement/data/mappers/announcement_mapper.dart';
import 'package:gaia/features/announcement/data/models/announcement_model.dart';
import 'package:gaia/features/announcement/domain/entites/announcement_entity.dart';
import 'package:gaia/shared/core/types/exception.dart';

class AnnouncementRemoteDataSource {
  final Dio _dio;
  AnnouncementRemoteDataSource(this._dio);

  Future<List<AnnouncementEntity>> getListAnnouncement() async {
    try {
      final res = await _dio.get('/announcement/list');
      final data = (res.data as Map<String, dynamic>)['data'] as List<dynamic>;
      return data
          .map((e) => AnnouncementModel.fromJson(
                Map<String, dynamic>.from(e as Map),
              ).toEntity())
          .toList(growable: false);
    } on DioException catch (e) {
      throw e.toFailure();
    }
  }
}
