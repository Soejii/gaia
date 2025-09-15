// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_module_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubModuleModel _$SubModuleModelFromJson(Map<String, dynamic> json) {
  return _SubModuleModel.fromJson(json);
}

/// @nodoc
mixin _$SubModuleModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get isUploaded => throw _privateConstructorUsedError;
  int? get examCount => throw _privateConstructorUsedError;
  int? get quizCount => throw _privateConstructorUsedError;

  /// Serializes this SubModuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubModuleModelCopyWith<SubModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubModuleModelCopyWith<$Res> {
  factory $SubModuleModelCopyWith(
          SubModuleModel value, $Res Function(SubModuleModel) then) =
      _$SubModuleModelCopyWithImpl<$Res, SubModuleModel>;
  @useResult
  $Res call(
      {int id, String? title, int? isUploaded, int? examCount, int? quizCount});
}

/// @nodoc
class _$SubModuleModelCopyWithImpl<$Res, $Val extends SubModuleModel>
    implements $SubModuleModelCopyWith<$Res> {
  _$SubModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? isUploaded = freezed,
    Object? examCount = freezed,
    Object? quizCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploaded: freezed == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as int?,
      examCount: freezed == examCount
          ? _value.examCount
          : examCount // ignore: cast_nullable_to_non_nullable
              as int?,
      quizCount: freezed == quizCount
          ? _value.quizCount
          : quizCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubModuleModelImplCopyWith<$Res>
    implements $SubModuleModelCopyWith<$Res> {
  factory _$$SubModuleModelImplCopyWith(_$SubModuleModelImpl value,
          $Res Function(_$SubModuleModelImpl) then) =
      __$$SubModuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? title, int? isUploaded, int? examCount, int? quizCount});
}

/// @nodoc
class __$$SubModuleModelImplCopyWithImpl<$Res>
    extends _$SubModuleModelCopyWithImpl<$Res, _$SubModuleModelImpl>
    implements _$$SubModuleModelImplCopyWith<$Res> {
  __$$SubModuleModelImplCopyWithImpl(
      _$SubModuleModelImpl _value, $Res Function(_$SubModuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? isUploaded = freezed,
    Object? examCount = freezed,
    Object? quizCount = freezed,
  }) {
    return _then(_$SubModuleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploaded: freezed == isUploaded
          ? _value.isUploaded
          : isUploaded // ignore: cast_nullable_to_non_nullable
              as int?,
      examCount: freezed == examCount
          ? _value.examCount
          : examCount // ignore: cast_nullable_to_non_nullable
              as int?,
      quizCount: freezed == quizCount
          ? _value.quizCount
          : quizCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SubModuleModelImpl implements _SubModuleModel {
  const _$SubModuleModelImpl(
      {required this.id,
      this.title,
      this.isUploaded,
      this.examCount,
      this.quizCount});

  factory _$SubModuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubModuleModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final int? isUploaded;
  @override
  final int? examCount;
  @override
  final int? quizCount;

  @override
  String toString() {
    return 'SubModuleModel(id: $id, title: $title, isUploaded: $isUploaded, examCount: $examCount, quizCount: $quizCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubModuleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isUploaded, isUploaded) ||
                other.isUploaded == isUploaded) &&
            (identical(other.examCount, examCount) ||
                other.examCount == examCount) &&
            (identical(other.quizCount, quizCount) ||
                other.quizCount == quizCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, isUploaded, examCount, quizCount);

  /// Create a copy of SubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubModuleModelImplCopyWith<_$SubModuleModelImpl> get copyWith =>
      __$$SubModuleModelImplCopyWithImpl<_$SubModuleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubModuleModelImplToJson(
      this,
    );
  }
}

abstract class _SubModuleModel implements SubModuleModel {
  const factory _SubModuleModel(
      {required final int id,
      final String? title,
      final int? isUploaded,
      final int? examCount,
      final int? quizCount}) = _$SubModuleModelImpl;

  factory _SubModuleModel.fromJson(Map<String, dynamic> json) =
      _$SubModuleModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  int? get isUploaded;
  @override
  int? get examCount;
  @override
  int? get quizCount;

  /// Create a copy of SubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubModuleModelImplCopyWith<_$SubModuleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
