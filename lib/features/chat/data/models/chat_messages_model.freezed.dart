// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessagesModel _$ChatMessagesModelFromJson(Map<String, dynamic> json) {
  return _ChatMessagesModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessagesModel {
  ContactModel get user => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  /// Serializes this ChatMessagesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagesModelCopyWith<ChatMessagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesModelCopyWith<$Res> {
  factory $ChatMessagesModelCopyWith(
          ChatMessagesModel value, $Res Function(ChatMessagesModel) then) =
      _$ChatMessagesModelCopyWithImpl<$Res, ChatMessagesModel>;
  @useResult
  $Res call({ContactModel user, List<MessageModel> messages});

  $ContactModelCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMessagesModelCopyWithImpl<$Res, $Val extends ChatMessagesModel>
    implements $ChatMessagesModelCopyWith<$Res> {
  _$ChatMessagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactModel,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ) as $Val);
  }

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res> get user {
    return $ContactModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessagesModelImplCopyWith<$Res>
    implements $ChatMessagesModelCopyWith<$Res> {
  factory _$$ChatMessagesModelImplCopyWith(_$ChatMessagesModelImpl value,
          $Res Function(_$ChatMessagesModelImpl) then) =
      __$$ChatMessagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactModel user, List<MessageModel> messages});

  @override
  $ContactModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMessagesModelImplCopyWithImpl<$Res>
    extends _$ChatMessagesModelCopyWithImpl<$Res, _$ChatMessagesModelImpl>
    implements _$$ChatMessagesModelImplCopyWith<$Res> {
  __$$ChatMessagesModelImplCopyWithImpl(_$ChatMessagesModelImpl _value,
      $Res Function(_$ChatMessagesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? messages = null,
  }) {
    return _then(_$ChatMessagesModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactModel,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessagesModelImpl implements _ChatMessagesModel {
  const _$ChatMessagesModelImpl(
      {required this.user, required final List<MessageModel> messages})
      : _messages = messages;

  factory _$ChatMessagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessagesModelImplFromJson(json);

  @override
  final ContactModel user;
  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatMessagesModel(user: $user, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesModelImplCopyWith<_$ChatMessagesModelImpl> get copyWith =>
      __$$ChatMessagesModelImplCopyWithImpl<_$ChatMessagesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessagesModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessagesModel implements ChatMessagesModel {
  const factory _ChatMessagesModel(
      {required final ContactModel user,
      required final List<MessageModel> messages}) = _$ChatMessagesModelImpl;

  factory _ChatMessagesModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessagesModelImpl.fromJson;

  @override
  ContactModel get user;
  @override
  List<MessageModel> get messages;

  /// Create a copy of ChatMessagesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagesModelImplCopyWith<_$ChatMessagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
