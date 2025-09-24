// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceModelImpl(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String?,
      date: json['date'] as String?,
      checkedInTime: json['checked_in_time'] as String?,
      checkedOutTime: json['checked_out_time'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$AttendanceModelImplToJson(
        _$AttendanceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'date': instance.date,
      'checked_in_time': instance.checkedInTime,
      'checked_out_time': instance.checkedOutTime,
      'notes': instance.notes,
    };
