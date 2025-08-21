import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_model.freezed.dart';
part 'change_password_model.g.dart';

@freezed
class ChangePasswordRequestModel with _$ChangePasswordRequestModel {
  const factory ChangePasswordRequestModel({
    @JsonKey(name: "old_password") required String oldPassword,
    @JsonKey(name: "password") required String password,
  }) = _ChangePasswordRequestModel;

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);
}

@freezed
class ChangePasswordResponseModel with _$ChangePasswordResponseModel {
  const factory ChangePasswordResponseModel({
    @JsonKey(name: "message") required String message,
  }) = _ChangePasswordResponseModel;

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseModelFromJson(json);
}
