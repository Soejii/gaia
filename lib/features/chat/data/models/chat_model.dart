import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatModel({
    required int userId,
    String? photo,
    String? name,
    String? role,
    String? lastChat,
    String? lastChatDate,
  }) = _ChatModel;
  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
