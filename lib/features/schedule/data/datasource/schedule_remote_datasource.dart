import 'package:dio/dio.dart';
import 'package:gaia/features/schedule/data/models/schedule_model.dart';
import 'package:gaia/features/schedule/domain/entities/schedule_entity.dart';

class ScheduleRemoteDataSource {
  final Dio _dio;

  ScheduleRemoteDataSource(this._dio);

  Future<List<ScheduleModel>> getScheduleByDay(DayOfWeek dayOfWeek) async {
    final response = await _dio.get('/schedule/${dayOfWeek.name}');

    final List<dynamic> jsonList = response.data['data'];
    return jsonList.map((json) => ScheduleModel.fromJson(json)).toList();
  }

  // Dummy data
  Future<List<ScheduleModel>> getScheduleByDayDummy(DayOfWeek dayOfWeek) async {
    await Future.delayed(Duration(seconds: 1));

  
    if (dayOfWeek == DayOfWeek.saturday) {
      return [];
    }

    // Base schedule untuk hari Senin-Jumat
    List<ScheduleModel> baseSchedule = [
      ScheduleModel(
        id: '1',
        subjectName: 'IPA',
        teacherName: 'Transbara Al Fatih,S.Pd',
        startTime: '08:00',
        endTime: '10:00',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_ipa.png',
      ),
      ScheduleModel(
        id: '2',
        subjectName: 'Matematika',
        teacherName: 'Siti Nurhalimah,S.Pd',
        startTime: '10:15',
        endTime: '11:45',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_matematika.png',
      ),
      ScheduleModel(
        id: '3',
        subjectName: 'Bahasa Indonesia',
        teacherName: 'Ahmad Fauzi,S.Pd',
        startTime: '13:00',
        endTime: '14:30',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_Indonesia.png', // Path baru
      ),
    ];

    if (dayOfWeek == DayOfWeek.monday) {
      baseSchedule.add(ScheduleModel(
        id: '4',
        subjectName: 'Fisika',
        teacherName: 'Dedi Kurniawan,S.Pd',
        startTime: '15:00',
        endTime: '16:30',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_fisika.png',
      ));
    }
    
    if (dayOfWeek == DayOfWeek.tuesday) {
      baseSchedule.add(ScheduleModel(
        id: '5',
        subjectName: 'Biologi',
        teacherName: 'Rina Sari,S.Pd',
        startTime: '15:00',
        endTime: '16:30',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_biologi.png',
      ));
    }
    
    if (dayOfWeek == DayOfWeek.friday) {
      baseSchedule.add(ScheduleModel(
        id: '6',
        subjectName: 'Sejarah',
        teacherName: 'Budi Santoso,S.Pd',
        startTime: '15:00',
        endTime: '16:30',
        dayOfWeek: dayOfWeek.name,
        subjectImage: 'assets/images/img_sejarah.png',
      ));
    }

    return baseSchedule;
  }
}
