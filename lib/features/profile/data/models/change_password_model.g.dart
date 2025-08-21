// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordRequestModelImpl _$$ChangePasswordRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordRequestModelImpl(
      oldPassword: json['old_password'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ChangePasswordRequestModelImplToJson(
        _$ChangePasswordRequestModelImpl instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'password': instance.password,
    };

_$ChangePasswordResponseModelImpl _$$ChangePasswordResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordResponseModelImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ChangePasswordResponseModelImplToJson(
        _$ChangePasswordResponseModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
