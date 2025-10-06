// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageState {
  ContactEntity? get user => throw _privateConstructorUsedError;
  Paged<MessageEntity> get messages => throw _privateConstructorUsedError;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
  @useResult
  $Res call({ContactEntity? user, Paged<MessageEntity> messages});
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactEntity?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Paged<MessageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageStateImplCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$MessageStateImplCopyWith(
          _$MessageStateImpl value, $Res Function(_$MessageStateImpl) then) =
      __$$MessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContactEntity? user, Paged<MessageEntity> messages});
}

/// @nodoc
class __$$MessageStateImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageStateImpl>
    implements _$$MessageStateImplCopyWith<$Res> {
  __$$MessageStateImplCopyWithImpl(
      _$MessageStateImpl _value, $Res Function(_$MessageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? messages = null,
  }) {
    return _then(_$MessageStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ContactEntity?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Paged<MessageEntity>,
    ));
  }
}

/// @nodoc

class _$MessageStateImpl implements _MessageState {
  const _$MessageStateImpl(
      {this.user,
      this.messages =
          const Paged<MessageEntity>(items: [], page: 1, hasMore: false)});

  @override
  final ContactEntity? user;
  @override
  @JsonKey()
  final Paged<MessageEntity> messages;

  @override
  String toString() {
    return 'MessageState(user: $user, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, messages);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStateImplCopyWith<_$MessageStateImpl> get copyWith =>
      __$$MessageStateImplCopyWithImpl<_$MessageStateImpl>(this, _$identity);
}

abstract class _MessageState implements MessageState {
  const factory _MessageState(
      {final ContactEntity? user,
      final Paged<MessageEntity> messages}) = _$MessageStateImpl;

  @override
  ContactEntity? get user;
  @override
  Paged<MessageEntity> get messages;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageStateImplCopyWith<_$MessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
