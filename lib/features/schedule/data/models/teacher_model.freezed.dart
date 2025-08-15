// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return _TeacherModel.fromJson(json);
}

/// @nodoc
mixin _$TeacherModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TeacherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeacherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeacherModelCopyWith<TeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherModelCopyWith<$Res> {
  factory $TeacherModelCopyWith(
          TeacherModel value, $Res Function(TeacherModel) then) =
      _$TeacherModelCopyWithImpl<$Res, TeacherModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TeacherModelCopyWithImpl<$Res, $Val extends TeacherModel>
    implements $TeacherModelCopyWith<$Res> {
  _$TeacherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeacherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherModelImplCopyWith<$Res>
    implements $TeacherModelCopyWith<$Res> {
  factory _$$TeacherModelImplCopyWith(
          _$TeacherModelImpl value, $Res Function(_$TeacherModelImpl) then) =
      __$$TeacherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TeacherModelImplCopyWithImpl<$Res>
    extends _$TeacherModelCopyWithImpl<$Res, _$TeacherModelImpl>
    implements _$$TeacherModelImplCopyWith<$Res> {
  __$$TeacherModelImplCopyWithImpl(
      _$TeacherModelImpl _value, $Res Function(_$TeacherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeacherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TeacherModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherModelImpl implements _TeacherModel {
  const _$TeacherModelImpl({required this.name});

  factory _$TeacherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TeacherModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of TeacherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherModelImplCopyWith<_$TeacherModelImpl> get copyWith =>
      __$$TeacherModelImplCopyWithImpl<_$TeacherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherModelImplToJson(
      this,
    );
  }
}

abstract class _TeacherModel implements TeacherModel {
  const factory _TeacherModel({required final String name}) =
      _$TeacherModelImpl;

  factory _TeacherModel.fromJson(Map<String, dynamic> json) =
      _$TeacherModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of TeacherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeacherModelImplCopyWith<_$TeacherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
