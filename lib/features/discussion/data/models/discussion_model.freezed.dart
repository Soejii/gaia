// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscussionModel _$DiscussionModelFromJson(Map<String, dynamic> json) {
  return _DiscussionModel.fromJson(json);
}

/// @nodoc
mixin _$DiscussionModel {
  int get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get postedBy => throw _privateConstructorUsedError;
  String? get postedByClasses => throw _privateConstructorUsedError;
  String? get postedByPhoto => throw _privateConstructorUsedError;
  String? get postedAt => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  int? get likesCount => throw _privateConstructorUsedError;
  CommentModel? get lastComment => throw _privateConstructorUsedError;

  /// Serializes this DiscussionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscussionModelCopyWith<DiscussionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionModelCopyWith<$Res> {
  factory $DiscussionModelCopyWith(
          DiscussionModel value, $Res Function(DiscussionModel) then) =
      _$DiscussionModelCopyWithImpl<$Res, DiscussionModel>;
  @useResult
  $Res call(
      {int id,
      String? text,
      String? postedBy,
      String? postedByClasses,
      String? postedByPhoto,
      String? postedAt,
      int? commentCount,
      int? likesCount,
      CommentModel? lastComment});

  $CommentModelCopyWith<$Res>? get lastComment;
}

/// @nodoc
class _$DiscussionModelCopyWithImpl<$Res, $Val extends DiscussionModel>
    implements $DiscussionModelCopyWith<$Res> {
  _$DiscussionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscussionModel
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
    Object? commentCount = freezed,
    Object? likesCount = freezed,
    Object? lastComment = freezed,
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
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastComment: freezed == lastComment
          ? _value.lastComment
          : lastComment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
    ) as $Val);
  }

  /// Create a copy of DiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get lastComment {
    if (_value.lastComment == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.lastComment!, (value) {
      return _then(_value.copyWith(lastComment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscussionModelImplCopyWith<$Res>
    implements $DiscussionModelCopyWith<$Res> {
  factory _$$DiscussionModelImplCopyWith(_$DiscussionModelImpl value,
          $Res Function(_$DiscussionModelImpl) then) =
      __$$DiscussionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? text,
      String? postedBy,
      String? postedByClasses,
      String? postedByPhoto,
      String? postedAt,
      int? commentCount,
      int? likesCount,
      CommentModel? lastComment});

  @override
  $CommentModelCopyWith<$Res>? get lastComment;
}

/// @nodoc
class __$$DiscussionModelImplCopyWithImpl<$Res>
    extends _$DiscussionModelCopyWithImpl<$Res, _$DiscussionModelImpl>
    implements _$$DiscussionModelImplCopyWith<$Res> {
  __$$DiscussionModelImplCopyWithImpl(
      _$DiscussionModelImpl _value, $Res Function(_$DiscussionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscussionModel
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
    Object? commentCount = freezed,
    Object? likesCount = freezed,
    Object? lastComment = freezed,
  }) {
    return _then(_$DiscussionModelImpl(
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
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastComment: freezed == lastComment
          ? _value.lastComment
          : lastComment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DiscussionModelImpl implements _DiscussionModel {
  const _$DiscussionModelImpl(
      {required this.id,
      this.text,
      this.postedBy,
      this.postedByClasses,
      this.postedByPhoto,
      this.postedAt,
      this.commentCount,
      this.likesCount,
      this.lastComment});

  factory _$DiscussionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscussionModelImplFromJson(json);

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
  final int? commentCount;
  @override
  final int? likesCount;
  @override
  final CommentModel? lastComment;

  @override
  String toString() {
    return 'DiscussionModel(id: $id, text: $text, postedBy: $postedBy, postedByClasses: $postedByClasses, postedByPhoto: $postedByPhoto, postedAt: $postedAt, commentCount: $commentCount, likesCount: $likesCount, lastComment: $lastComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscussionModelImpl &&
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
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.lastComment, lastComment) ||
                other.lastComment == lastComment));
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
      commentCount,
      likesCount,
      lastComment);

  /// Create a copy of DiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscussionModelImplCopyWith<_$DiscussionModelImpl> get copyWith =>
      __$$DiscussionModelImplCopyWithImpl<_$DiscussionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscussionModelImplToJson(
      this,
    );
  }
}

abstract class _DiscussionModel implements DiscussionModel {
  const factory _DiscussionModel(
      {required final int id,
      final String? text,
      final String? postedBy,
      final String? postedByClasses,
      final String? postedByPhoto,
      final String? postedAt,
      final int? commentCount,
      final int? likesCount,
      final CommentModel? lastComment}) = _$DiscussionModelImpl;

  factory _DiscussionModel.fromJson(Map<String, dynamic> json) =
      _$DiscussionModelImpl.fromJson;

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
  int? get commentCount;
  @override
  int? get likesCount;
  @override
  CommentModel? get lastComment;

  /// Create a copy of DiscussionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscussionModelImplCopyWith<_$DiscussionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
