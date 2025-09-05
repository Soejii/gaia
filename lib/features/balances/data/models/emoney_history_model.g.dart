// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoney_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmoneyHistoryModelImpl _$$EmoneyHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmoneyHistoryModelImpl(
      amount: json['amount'] as String,
      date: json['date'] as String,
      transaction: json['transaction'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$EmoneyHistoryModelImplToJson(
        _$EmoneyHistoryModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'date': instance.date,
      'transaction': instance.transaction,
      'status': instance.status,
    };
