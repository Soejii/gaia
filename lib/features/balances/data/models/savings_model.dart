import 'package:freezed_annotation/freezed_annotation.dart';

part 'savings_model.g.dart';
part 'savings_model.freezed.dart';

@freezed
class SavingsModel with _$SavingsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SavingsModel({
    required String name,
    required String cardId,
    required String saldoTabungan,
    required String totalDebit,
    required String totalKredit,
  }) = _SavingsModel;

  factory SavingsModel.fromJson(Map<String, dynamic> json) =>
      _$SavingsModelFromJson(json);
}
