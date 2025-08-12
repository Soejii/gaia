import 'package:dio/dio.dart';
import 'package:gaia/features/announcement/data/mappers/announcement_mapper.dart';
import 'package:gaia/features/announcement/data/models/announcement_model.dart';
import 'package:gaia/features/announcement/domain/entites/announcement_entity.dart';
import 'package:gaia/shared/core/types/exception.dart';

class AnnouncementRemoteDataSource {
  final Dio _dio;
  AnnouncementRemoteDataSource(this._dio);

  Future<AnnouncementEntity> getListAnnouncement() async {
    try {
      final res = await _dio.get('announcement/list');
      return AnnouncementModel.fromJson(res.data['data']).toEntity();
    } on DioException catch (e) {
      throw e.toFailure();
    }
  }
}
