// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessagesModelImpl _$$ChatMessagesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessagesModelImpl(
      user: ContactModel.fromJson(json['user'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMessagesModelImplToJson(
        _$ChatMessagesModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'messages': instance.messages,
    };
