// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'savings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavingsModelImpl _$$SavingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SavingsModelImpl(
      name: json['name'] as String,
      cardId: json['card_id'] as String,
      saldoTabungan: json['saldo_tabungan'] as String,
      totalDebit: json['total_debit'] as String,
      totalKredit: json['total_kredit'] as String,
    );

Map<String, dynamic> _$$SavingsModelImplToJson(_$SavingsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'card_id': instance.cardId,
      'saldo_tabungan': instance.saldoTabungan,
      'total_debit': instance.totalDebit,
      'total_kredit': instance.totalKredit,
    };
