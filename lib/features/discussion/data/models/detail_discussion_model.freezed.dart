// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_discussion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailDiscussionModel _$DetailDiscussionModelFromJson(
    Map<String, dynamic> json) {
  return _DetailDiscussionModel.fromJson(json);
}

/// @nodoc
mixin _$DetailDiscussionModel {
  int get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get postedBy => throw _privateConstructorUsedError;
  String? get postedByClasses => throw _privateConstructorUsedError;
  String? get postedByPhoto => throw _privateConstructorUsedError;
  String? get postedAt => throw _privateConstructorUsedError;
  int? get commentsCount => throw _privateConstructorUsedError;
  int? get likesCount => throw _privateConstructorUsedError;
  List<CommentModel>? get comments => throw _privateConstructorUsedError;

  /// Serializes this DetailDiscussionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailDiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailDiscussionModelCopyWith<DetailDiscussionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDiscussionModelCopyWith<$Res> {
  factory $DetailDiscussionModelCopyWith(DetailDiscussionModel value,
          $Res Function(DetailDiscussionModel) then) =
      _$DetailDiscussionModelCopyWithImpl<$Res, DetailDiscussionModel>;
  @useResult
  $Res call(
      {int id,
      String? text,
      String? postedBy,
      String? postedByClasses,
      String? postedByPhoto,
      String? postedAt,
      int? commentsCount,
      int? likesCount,
      List<CommentModel>? comments});
}

/// @nodoc
class _$DetailDiscussionModelCopyWithImpl<$Res,
        $Val extends DetailDiscussionModel>
    implements $DetailDiscussionModelCopyWith<$Res> {
  _$DetailDiscussionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailDiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? postedBy = freezed,
    Object? postedByClasses = freezed,
    Object? postedByPhoto = freezed,
    Object? postedAt = freezed,
    Object? commentsCount = freezed,
    Object? likesCount = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedByClasses: freezed == postedByClasses
          ? _value.postedByClasses
          : postedByClasses // ignore: cast_nullable_to_non_nullable
              as String?,
      postedByPhoto: freezed == postedByPhoto
          ? _value.postedByPhoto
          : postedByPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailDiscussionModelImplCopyWith<$Res>
    implements $DetailDiscussionModelCopyWith<$Res> {
  factory _$$DetailDiscussionModelImplCopyWith(
          _$DetailDiscussionModelImpl value,
          $Res Function(_$DetailDiscussionModelImpl) then) =
      __$$DetailDiscussionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? text,
      String? postedBy,
      String? postedByClasses,
      String? postedByPhoto,
      String? postedAt,
      int? commentsCount,
      int? likesCount,
      List<CommentModel>? comments});
}

/// @nodoc
class __$$DetailDiscussionModelImplCopyWithImpl<$Res>
    extends _$DetailDiscussionModelCopyWithImpl<$Res,
        _$DetailDiscussionModelImpl>
    implements _$$DetailDiscussionModelImplCopyWith<$Res> {
  __$$DetailDiscussionModelImplCopyWithImpl(_$DetailDiscussionModelImpl _value,
      $Res Function(_$DetailDiscussionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? postedBy = freezed,
    Object? postedByClasses = freezed,
    Object? postedByPhoto = freezed,
    Object? postedAt = freezed,
    Object? commentsCount = freezed,
    Object? likesCount = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$DetailDiscussionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      postedBy: freezed == postedBy
          ? _value.postedBy
          : postedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      postedByClasses: freezed == postedByClasses
          ? _value.postedByClasses
          : postedByClasses // ignore: cast_nullable_to_non_nullable
              as String?,
      postedByPhoto: freezed == postedByPhoto
          ? _value.postedByPhoto
          : postedByPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      postedAt: freezed == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DetailDiscussionModelImpl implements _DetailDiscussionModel {
  const _$DetailDiscussionModelImpl(
      {required this.id,
      this.text,
      this.postedBy,
      this.postedByClasses,
      this.postedByPhoto,
      this.postedAt,
      this.commentsCount,
      this.likesCount,
      final List<CommentModel>? comments})
      : _comments = comments;

  factory _$DetailDiscussionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailDiscussionModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? text;
  @override
  final String? postedBy;
  @override
  final String? postedByClasses;
  @override
  final String? postedByPhoto;
  @override
  final String? postedAt;
  @override
  final int? commentsCount;
  @override
  final int? likesCount;
  final List<CommentModel>? _comments;
  @override
  List<CommentModel>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailDiscussionModel(id: $id, text: $text, postedBy: $postedBy, postedByClasses: $postedByClasses, postedByPhoto: $postedByPhoto, postedAt: $postedAt, commentsCount: $commentsCount, likesCount: $likesCount, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDiscussionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.postedBy, postedBy) ||
                other.postedBy == postedBy) &&
            (identical(other.postedByClasses, postedByClasses) ||
                other.postedByClasses == postedByClasses) &&
            (identical(other.postedByPhoto, postedByPhoto) ||
                other.postedByPhoto == postedByPhoto) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      text,
      postedBy,
      postedByClasses,
      postedByPhoto,
      postedAt,
      commentsCount,
      likesCount,
      const DeepCollectionEquality().hash(_comments));

  /// Create a copy of DetailDiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDiscussionModelImplCopyWith<_$DetailDiscussionModelImpl>
      get copyWith => __$$DetailDiscussionModelImplCopyWithImpl<
          _$DetailDiscussionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailDiscussionModelImplToJson(
      this,
    );
  }
}

abstract class _DetailDiscussionModel implements DetailDiscussionModel {
  const factory _DetailDiscussionModel(
      {required final int id,
      final String? text,
      final String? postedBy,
      final String? postedByClasses,
      final String? postedByPhoto,
      final String? postedAt,
      final int? commentsCount,
      final int? likesCount,
      final List<CommentModel>? comments}) = _$DetailDiscussionModelImpl;

  factory _DetailDiscussionModel.fromJson(Map<String, dynamic> json) =
      _$DetailDiscussionModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get text;
  @override
  String? get postedBy;
  @override
  String? get postedByClasses;
  @override
  String? get postedByPhoto;
  @override
  String? get postedAt;
  @override
  int? get commentsCount;
  @override
  int? get likesCount;
  @override
  List<CommentModel>? get comments;

  /// Create a copy of DetailDiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailDiscussionModelImplCopyWith<_$DetailDiscussionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
