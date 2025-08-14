import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_entity.freezed.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    required String id,
    required String subjectName,
    required String teacherName,
    required String startTime,
    required String endTime,
    required DayOfWeek dayOfWeek,
    required String subjectImage, 
  }) =_ScheduleEntity;
  
}

enum DayOfWeek{
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  String get displayName {
    switch (this) {
        case DayOfWeek.monday:
        return 'Senin';
      case DayOfWeek.tuesday:
        return 'Selasa';
      case DayOfWeek.wednesday:
        return 'Rabu';
      case DayOfWeek.thursday:
        return 'Kamis';
      case DayOfWeek.friday:
        return 'Jumat';
      case DayOfWeek.saturday:
        return 'Sabtu';
      case DayOfWeek.sunday:
        return 'Minggu';
    }
  }

  
  static List<DayOfWeek> get weekDays => [
        DayOfWeek.monday,
        DayOfWeek.tuesday,
        DayOfWeek.wednesday,
        DayOfWeek.thursday,
        DayOfWeek.friday,
        DayOfWeek.saturday,
        DayOfWeek.sunday,
      ];
}

