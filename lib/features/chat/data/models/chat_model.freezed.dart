// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  int? get userId => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get lastChat => throw _privateConstructorUsedError;
  String? get lastChatDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  ContactModel? get user => throw _privateConstructorUsedError;
  List<MessageModel>? get messages => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {int? userId,
      String? photo,
      String? name,
      String? role,
      String? lastChat,
      String? lastChatDate,
      @JsonKey(name: 'class') String? className,
      ContactModel? user,
      List<MessageModel>? messages});

  $ContactModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? lastChat = freezed,
    Object? lastChatDate = freezed,
    Object? className = freezed,
    Object? user = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChat: freezed == lastChat
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChatDate: freezed == lastChatDate
          ? _value.lastChatDate
          : lastChatDate // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
    ) as $Val);
  }

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ContactModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      String? photo,
      String? name,
      String? role,
      String? lastChat,
      String? lastChatDate,
      @JsonKey(name: 'class') String? className,
      ContactModel? user,
      List<MessageModel>? messages});

  @override
  $ContactModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? lastChat = freezed,
    Object? lastChatDate = freezed,
    Object? className = freezed,
    Object? user = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$ChatModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChat: freezed == lastChat
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as String?,
      lastChatDate: freezed == lastChatDate
          ? _value.lastChatDate
          : lastChatDate // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ChatModelImpl implements _ChatModel {
  const _$ChatModelImpl(
      {this.userId,
      this.photo,
      this.name,
      this.role,
      this.lastChat,
      this.lastChatDate,
      @JsonKey(name: 'class') this.className,
      this.user,
      final List<MessageModel>? messages})
      : _messages = messages;

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final int? userId;
  @override
  final String? photo;
  @override
  final String? name;
  @override
  final String? role;
  @override
  final String? lastChat;
  @override
  final String? lastChatDate;
  @override
  @JsonKey(name: 'class')
  final String? className;
  @override
  final ContactModel? user;
  final List<MessageModel>? _messages;
  @override
  List<MessageModel>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatModel(userId: $userId, photo: $photo, name: $name, role: $role, lastChat: $lastChat, lastChatDate: $lastChatDate, className: $className, user: $user, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.lastChat, lastChat) ||
                other.lastChat == lastChat) &&
            (identical(other.lastChatDate, lastChatDate) ||
                other.lastChatDate == lastChatDate) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      photo,
      name,
      role,
      lastChat,
      lastChatDate,
      className,
      user,
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {final int? userId,
      final String? photo,
      final String? name,
      final String? role,
      final String? lastChat,
      final String? lastChatDate,
      @JsonKey(name: 'class') final String? className,
      final ContactModel? user,
      final List<MessageModel>? messages}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  int? get userId;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  String? get role;
  @override
  String? get lastChat;
  @override
  String? get lastChatDate;
  @override
  @JsonKey(name: 'class')
  String? get className;
  @override
  ContactModel? get user;
  @override
  List<MessageModel>? get messages;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
