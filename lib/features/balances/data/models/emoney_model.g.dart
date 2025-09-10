// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoney_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmoneyModelImpl _$$EmoneyModelImplFromJson(Map<String, dynamic> json) =>
    _$EmoneyModelImpl(
      name: json['name'] as String?,
      cardId: json['card_id'] as String?,
      saldoEmoney: json['saldo_emoney'] as String?,
      totalTopup: json['total_topup'] as String?,
      totalPayment: json['total_payment'] as String?,
      totalCashout: json['total_cashout'] as String?,
    );

Map<String, dynamic> _$$EmoneyModelImplToJson(_$EmoneyModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'card_id': instance.cardId,
      'saldo_emoney': instance.saldoEmoney,
      'total_topup': instance.totalTopup,
      'total_payment': instance.totalPayment,
      'total_cashout': instance.totalCashout,
    };
