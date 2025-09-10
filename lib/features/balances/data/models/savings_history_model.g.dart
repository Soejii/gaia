// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavingsHistoryModelImpl _$$SavingsHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavingsHistoryModelImpl(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      confirmed: (json['confirmed'] as num?)?.toInt(),
      transaction: json['transaction'] as String?,
    );

Map<String, dynamic> _$$SavingsHistoryModelImplToJson(
        _$SavingsHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'amount': instance.amount,
      'confirmed': instance.confirmed,
      'transaction': instance.transaction,
    };
