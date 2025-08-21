// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequestModel {
  @JsonKey(name: "old_password")
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestModelCopyWith<ChangePasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestModelCopyWith<$Res> {
  factory $ChangePasswordRequestModelCopyWith(ChangePasswordRequestModel value,
          $Res Function(ChangePasswordRequestModel) then) =
      _$ChangePasswordRequestModelCopyWithImpl<$Res,
          ChangePasswordRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$ChangePasswordRequestModelCopyWithImpl<$Res,
        $Val extends ChangePasswordRequestModel>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  _$ChangePasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestModelImplCopyWith<$Res>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  factory _$$ChangePasswordRequestModelImplCopyWith(
          _$ChangePasswordRequestModelImpl value,
          $Res Function(_$ChangePasswordRequestModelImpl) then) =
      __$$ChangePasswordRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$ChangePasswordRequestModelImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestModelCopyWithImpl<$Res,
        _$ChangePasswordRequestModelImpl>
    implements _$$ChangePasswordRequestModelImplCopyWith<$Res> {
  __$$ChangePasswordRequestModelImplCopyWithImpl(
      _$ChangePasswordRequestModelImpl _value,
      $Res Function(_$ChangePasswordRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? password = null,
  }) {
    return _then(_$ChangePasswordRequestModelImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestModelImpl implements _ChangePasswordRequestModel {
  const _$ChangePasswordRequestModelImpl(
      {@JsonKey(name: "old_password") required this.oldPassword,
      @JsonKey(name: "password") required this.password});

  factory _$ChangePasswordRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangePasswordRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "old_password")
  final String oldPassword;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'ChangePasswordRequestModel(oldPassword: $oldPassword, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestModelImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, password);

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestModelImplCopyWith<_$ChangePasswordRequestModelImpl>
      get copyWith => __$$ChangePasswordRequestModelImplCopyWithImpl<
          _$ChangePasswordRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequestModel
    implements ChangePasswordRequestModel {
  const factory _ChangePasswordRequestModel(
          {@JsonKey(name: "old_password") required final String oldPassword,
          @JsonKey(name: "password") required final String password}) =
      _$ChangePasswordRequestModelImpl;

  factory _ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "old_password")
  String get oldPassword;
  @override
  @JsonKey(name: "password")
  String get password;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestModelImplCopyWith<_$ChangePasswordRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangePasswordResponseModel _$ChangePasswordResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordResponseModel {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordResponseModelCopyWith<ChangePasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordResponseModelCopyWith<$Res> {
  factory $ChangePasswordResponseModelCopyWith(
          ChangePasswordResponseModel value,
          $Res Function(ChangePasswordResponseModel) then) =
      _$ChangePasswordResponseModelCopyWithImpl<$Res,
          ChangePasswordResponseModel>;
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class _$ChangePasswordResponseModelCopyWithImpl<$Res,
        $Val extends ChangePasswordResponseModel>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  _$ChangePasswordResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordResponseModelImplCopyWith<$Res>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  factory _$$ChangePasswordResponseModelImplCopyWith(
          _$ChangePasswordResponseModelImpl value,
          $Res Function(_$ChangePasswordResponseModelImpl) then) =
      __$$ChangePasswordResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") String message});
}

/// @nodoc
class __$$ChangePasswordResponseModelImplCopyWithImpl<$Res>
    extends _$ChangePasswordResponseModelCopyWithImpl<$Res,
        _$ChangePasswordResponseModelImpl>
    implements _$$ChangePasswordResponseModelImplCopyWith<$Res> {
  __$$ChangePasswordResponseModelImplCopyWithImpl(
      _$ChangePasswordResponseModelImpl _value,
      $Res Function(_$ChangePasswordResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChangePasswordResponseModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordResponseModelImpl
    implements _ChangePasswordResponseModel {
  const _$ChangePasswordResponseModelImpl(
      {@JsonKey(name: "message") required this.message});

  factory _$ChangePasswordResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangePasswordResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ChangePasswordResponseModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordResponseModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChangePasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordResponseModelImplCopyWith<_$ChangePasswordResponseModelImpl>
      get copyWith => __$$ChangePasswordResponseModelImplCopyWithImpl<
          _$ChangePasswordResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordResponseModel
    implements ChangePasswordResponseModel {
  const factory _ChangePasswordResponseModel(
          {@JsonKey(name: "message") required final String message}) =
      _$ChangePasswordResponseModelImpl;

  factory _ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;

  /// Create a copy of ChangePasswordResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordResponseModelImplCopyWith<_$ChangePasswordResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
