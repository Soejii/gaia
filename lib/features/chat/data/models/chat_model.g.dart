// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      userId: (json['user_id'] as num?)?.toInt(),
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      lastChat: json['last_chat'] as String?,
      lastChatDate: json['last_chat_date'] as String?,
      className: json['class'] as String?,
      user: json['user'] == null
          ? null
          : ContactModel.fromJson(json['user'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['has_more'] as bool?,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'photo': instance.photo,
      'name': instance.name,
      'role': instance.role,
      'last_chat': instance.lastChat,
      'last_chat_date': instance.lastChatDate,
      'class': instance.className,
      'user': instance.user,
      'messages': instance.messages,
      'has_more': instance.hasMore,
    };
