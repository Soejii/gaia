// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatDetailModel _$ChatDetailModelFromJson(Map<String, dynamic> json) {
  return _ChatDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ChatDetailModel {
  ContactModel? get contact => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isSendingMessage => throw _privateConstructorUsedError;

  /// Serializes this ChatDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDetailModelCopyWith<ChatDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailModelCopyWith<$Res> {
  factory $ChatDetailModelCopyWith(
          ChatDetailModel value, $Res Function(ChatDetailModel) then) =
      _$ChatDetailModelCopyWithImpl<$Res, ChatDetailModel>;
  @useResult
  $Res call(
      {ContactModel? contact,
      List<MessageModel> messages,
      int page,
      bool hasMore,
      bool isSendingMessage});

  $ContactModelCopyWith<$Res>? get contact;
}

/// @nodoc
class _$ChatDetailModelCopyWithImpl<$Res, $Val extends ChatDetailModel>
    implements $ChatDetailModelCopyWith<$Res> {
  _$ChatDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? messages = null,
    Object? page = null,
    Object? hasMore = null,
    Object? isSendingMessage = null,
  }) {
    return _then(_value.copyWith(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingMessage: null == isSendingMessage
          ? _value.isSendingMessage
          : isSendingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactModelCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatDetailModelImplCopyWith<$Res>
    implements $ChatDetailModelCopyWith<$Res> {
  factory _$$ChatDetailModelImplCopyWith(_$ChatDetailModelImpl value,
          $Res Function(_$ChatDetailModelImpl) then) =
      __$$ChatDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContactModel? contact,
      List<MessageModel> messages,
      int page,
      bool hasMore,
      bool isSendingMessage});

  @override
  $ContactModelCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$ChatDetailModelImplCopyWithImpl<$Res>
    extends _$ChatDetailModelCopyWithImpl<$Res, _$ChatDetailModelImpl>
    implements _$$ChatDetailModelImplCopyWith<$Res> {
  __$$ChatDetailModelImplCopyWithImpl(
      _$ChatDetailModelImpl _value, $Res Function(_$ChatDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = freezed,
    Object? messages = null,
    Object? page = null,
    Object? hasMore = null,
    Object? isSendingMessage = null,
  }) {
    return _then(_$ChatDetailModelImpl(
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactModel?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingMessage: null == isSendingMessage
          ? _value.isSendingMessage
          : isSendingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDetailModelImpl implements _ChatDetailModel {
  const _$ChatDetailModelImpl(
      {this.contact,
      final List<MessageModel> messages = const [],
      this.page = 1,
      this.hasMore = false,
      this.isSendingMessage = false})
      : _messages = messages;

  factory _$ChatDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDetailModelImplFromJson(json);

  @override
  final ContactModel? contact;
  final List<MessageModel> _messages;
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final bool isSendingMessage;

  @override
  String toString() {
    return 'ChatDetailModel(contact: $contact, messages: $messages, page: $page, hasMore: $hasMore, isSendingMessage: $isSendingMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailModelImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isSendingMessage, isSendingMessage) ||
                other.isSendingMessage == isSendingMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contact,
      const DeepCollectionEquality().hash(_messages),
      page,
      hasMore,
      isSendingMessage);

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailModelImplCopyWith<_$ChatDetailModelImpl> get copyWith =>
      __$$ChatDetailModelImplCopyWithImpl<_$ChatDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ChatDetailModel implements ChatDetailModel {
  const factory _ChatDetailModel(
      {final ContactModel? contact,
      final List<MessageModel> messages,
      final int page,
      final bool hasMore,
      final bool isSendingMessage}) = _$ChatDetailModelImpl;

  factory _ChatDetailModel.fromJson(Map<String, dynamic> json) =
      _$ChatDetailModelImpl.fromJson;

  @override
  ContactModel? get contact;
  @override
  List<MessageModel> get messages;
  @override
  int get page;
  @override
  bool get hasMore;
  @override
  bool get isSendingMessage;

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDetailModelImplCopyWith<_$ChatDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
