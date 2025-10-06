// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      userId: (json['user_id'] as num).toInt(),
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      lastChat: json['last_chat'] as String?,
      lastChatDate: json['last_chat_date'] as String?,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'photo': instance.photo,
      'name': instance.name,
      'role': instance.role,
      'last_chat': instance.lastChat,
      'last_chat_date': instance.lastChatDate,
    };
