// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edutainment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EdutainmentModel _$EdutainmentModelFromJson(Map<String, dynamic> json) {
  return _EdutainmentModel.fromJson(json);
}

/// @nodoc
mixin _$EdutainmentModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this EdutainmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdutainmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdutainmentModelCopyWith<EdutainmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdutainmentModelCopyWith<$Res> {
  factory $EdutainmentModelCopyWith(
          EdutainmentModel value, $Res Function(EdutainmentModel) then) =
      _$EdutainmentModelCopyWithImpl<$Res, EdutainmentModel>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? thumbnail,
      String? link,
      String? createdAt,
      String? description});
}

/// @nodoc
class _$EdutainmentModelCopyWithImpl<$Res, $Val extends EdutainmentModel>
    implements $EdutainmentModelCopyWith<$Res> {
  _$EdutainmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EdutainmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
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
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdutainmentModelImplCopyWith<$Res>
    implements $EdutainmentModelCopyWith<$Res> {
  factory _$$EdutainmentModelImplCopyWith(_$EdutainmentModelImpl value,
          $Res Function(_$EdutainmentModelImpl) then) =
      __$$EdutainmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? thumbnail,
      String? link,
      String? createdAt,
      String? description});
}

/// @nodoc
class __$$EdutainmentModelImplCopyWithImpl<$Res>
    extends _$EdutainmentModelCopyWithImpl<$Res, _$EdutainmentModelImpl>
    implements _$$EdutainmentModelImplCopyWith<$Res> {
  __$$EdutainmentModelImplCopyWithImpl(_$EdutainmentModelImpl _value,
      $Res Function(_$EdutainmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EdutainmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? link = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
  }) {
    return _then(_$EdutainmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EdutainmentModelImpl implements _EdutainmentModel {
  const _$EdutainmentModelImpl(
      {required this.id,
      this.title,
      this.thumbnail,
      this.link,
      this.createdAt,
      this.description});

  factory _$EdutainmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdutainmentModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? link;
  @override
  final String? createdAt;
  @override
  final String? description;

  @override
  String toString() {
    return 'EdutainmentModel(id: $id, title: $title, thumbnail: $thumbnail, link: $link, createdAt: $createdAt, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdutainmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, thumbnail, link, createdAt, description);

  /// Create a copy of EdutainmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdutainmentModelImplCopyWith<_$EdutainmentModelImpl> get copyWith =>
      __$$EdutainmentModelImplCopyWithImpl<_$EdutainmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdutainmentModelImplToJson(
      this,
    );
  }
}

abstract class _EdutainmentModel implements EdutainmentModel {
  const factory _EdutainmentModel(
      {required final int id,
      final String? title,
      final String? thumbnail,
      final String? link,
      final String? createdAt,
      final String? description}) = _$EdutainmentModelImpl;

  factory _EdutainmentModel.fromJson(Map<String, dynamic> json) =
      _$EdutainmentModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get link;
  @override
  String? get createdAt;
  @override
  String? get description;

  /// Create a copy of EdutainmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdutainmentModelImplCopyWith<_$EdutainmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
