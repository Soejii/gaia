// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavingsModelImpl _$$SavingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SavingsModelImpl(
      name: json['name'] as String?,
      cardId: json['card_id'] as String?,
      saldoTopup: json['saldo_topup'] as String?,
      totalTopup: json['total_topup'] as String?,
      totalCashout: json['total_cashout'] as String?,
    );

Map<String, dynamic> _$$SavingsModelImplToJson(_$SavingsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'card_id': instance.cardId,
      'saldo_topup': instance.saldoTopup,
      'total_topup': instance.totalTopup,
      'total_cashout': instance.totalCashout,
    };
