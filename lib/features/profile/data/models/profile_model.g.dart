// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num).toInt(),
      nis: json['nis'] as String?,
      nisn: json['nisn'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nis': instance.nis,
      'nisn': instance.nisn,
      'name': instance.name,
      'photo': instance.photo,
      'gender': instance.gender,
    };
