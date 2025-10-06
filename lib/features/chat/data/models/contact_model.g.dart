// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactModelImpl _$$ContactModelImplFromJson(Map<String, dynamic> json) =>
    _$ContactModelImpl(
      userId: (json['user_id'] as num?)?.toInt(),
      role: json['role'] as String?,
      className: json['class'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$ContactModelImplToJson(_$ContactModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'role': instance.role,
      'class': instance.className,
      'name': instance.name,
      'photo': instance.photo,
    };
