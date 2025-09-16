import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.g.dart';
part 'media_model.freezed.dart';

@freezed
class MediaModel with _$MediaModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MediaModel({
    required int id,
    String? name,
    String? type,
    String? media,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
