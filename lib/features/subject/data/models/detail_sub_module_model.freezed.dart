// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_sub_module_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailSubModuleModel _$DetailSubModuleModelFromJson(Map<String, dynamic> json) {
  return _DetailSubModuleModel.fromJson(json);
}

/// @nodoc
mixin _$DetailSubModuleModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get publishDate => throw _privateConstructorUsedError;

  /// Serializes this DetailSubModuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailSubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailSubModuleModelCopyWith<DetailSubModuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSubModuleModelCopyWith<$Res> {
  factory $DetailSubModuleModelCopyWith(DetailSubModuleModel value,
          $Res Function(DetailSubModuleModel) then) =
      _$DetailSubModuleModelCopyWithImpl<$Res, DetailSubModuleModel>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      String? createdAt,
      String? publishDate});
}

/// @nodoc
class _$DetailSubModuleModelCopyWithImpl<$Res,
        $Val extends DetailSubModuleModel>
    implements $DetailSubModuleModelCopyWith<$Res> {
  _$DetailSubModuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailSubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? publishDate = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailSubModuleModelImplCopyWith<$Res>
    implements $DetailSubModuleModelCopyWith<$Res> {
  factory _$$DetailSubModuleModelImplCopyWith(_$DetailSubModuleModelImpl value,
          $Res Function(_$DetailSubModuleModelImpl) then) =
      __$$DetailSubModuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      String? createdAt,
      String? publishDate});
}

/// @nodoc
class __$$DetailSubModuleModelImplCopyWithImpl<$Res>
    extends _$DetailSubModuleModelCopyWithImpl<$Res, _$DetailSubModuleModelImpl>
    implements _$$DetailSubModuleModelImplCopyWith<$Res> {
  __$$DetailSubModuleModelImplCopyWithImpl(_$DetailSubModuleModelImpl _value,
      $Res Function(_$DetailSubModuleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailSubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? publishDate = freezed,
  }) {
    return _then(_$DetailSubModuleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DetailSubModuleModelImpl implements _DetailSubModuleModel {
  const _$DetailSubModuleModelImpl(
      {required this.id,
      this.title,
      this.description,
      this.createdAt,
      this.publishDate});

  factory _$DetailSubModuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSubModuleModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? publishDate;

  @override
  String toString() {
    return 'DetailSubModuleModel(id: $id, title: $title, description: $description, createdAt: $createdAt, publishDate: $publishDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSubModuleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, createdAt, publishDate);

  /// Create a copy of DetailSubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSubModuleModelImplCopyWith<_$DetailSubModuleModelImpl>
      get copyWith =>
          __$$DetailSubModuleModelImplCopyWithImpl<_$DetailSubModuleModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSubModuleModelImplToJson(
      this,
    );
  }
}

abstract class _DetailSubModuleModel implements DetailSubModuleModel {
  const factory _DetailSubModuleModel(
      {required final int id,
      final String? title,
      final String? description,
      final String? createdAt,
      final String? publishDate}) = _$DetailSubModuleModelImpl;

  factory _DetailSubModuleModel.fromJson(Map<String, dynamic> json) =
      _$DetailSubModuleModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get publishDate;

  /// Create a copy of DetailSubModuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSubModuleModelImplCopyWith<_$DetailSubModuleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
