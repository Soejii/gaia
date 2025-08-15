import 'package:dio/dio.dart';
import 'package:gaia/features/schedule/data/models/schedule_model.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';
import 'package:gaia/shared/core/config.dart';

class ScheduleRemoteDataSource {
  final Dio _dio;
  final String _baseUrl = ConfigEnvironments.getEnvironments()['baseUrl']!;

  ScheduleRemoteDataSource(this._dio);

  Future<List<ScheduleModel>> getScheduleByDay(DayOfWeek dayOfWeek) async {
    try {
      final dayName = _getDayName(dayOfWeek);
      final response = await _dio.get(
        '$_baseUrl/subject-schedule',
        queryParameters: {'day': dayName},
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'] ?? response.data;
        return data.map((json) => ScheduleModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load schedule: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  String _getDayName(DayOfWeek dayOfWeek) {
    switch (dayOfWeek) {
      case DayOfWeek.monday:
        return 'senin';
      case DayOfWeek.tuesday:
        return 'selasa';
      case DayOfWeek.wednesday:
        return 'rabu';
      case DayOfWeek.thursday:
        return 'kamis';
      case DayOfWeek.friday:
        return 'jumat';
      case DayOfWeek.saturday:
        return 'sabtu';
      case DayOfWeek.sunday:
        return 'minggu';
    }
  }
}
