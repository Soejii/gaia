import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoney_history_model.g.dart';
part 'emoney_history_model.freezed.dart';

@freezed
class EmoneyHistoryModel with _$EmoneyHistoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EmoneyHistoryModel({
    required String amount,
    required String date,
    required String transaction,
    required String status,
  }) = _EmoneyHistoryModel;

  factory EmoneyHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$EmoneyHistoryModelFromJson(json);
}
