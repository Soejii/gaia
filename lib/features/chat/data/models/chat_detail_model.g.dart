// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDetailModelImpl _$$ChatDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatDetailModelImpl(
      contact: json['contact'] == null
          ? null
          : ContactModel.fromJson(json['contact'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      page: (json['page'] as num?)?.toInt() ?? 1,
      hasMore: json['hasMore'] as bool? ?? false,
      isSendingMessage: json['isSendingMessage'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatDetailModelImplToJson(
        _$ChatDetailModelImpl instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'messages': instance.messages,
      'page': instance.page,
      'hasMore': instance.hasMore,
      'isSendingMessage': instance.isSendingMessage,
    };
