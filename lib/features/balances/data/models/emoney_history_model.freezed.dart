// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoney_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmoneyHistoryModel _$EmoneyHistoryModelFromJson(Map<String, dynamic> json) {
  return _EmoneyHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$EmoneyHistoryModel {
  int get id => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get transaction => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this EmoneyHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmoneyHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmoneyHistoryModelCopyWith<EmoneyHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoneyHistoryModelCopyWith<$Res> {
  factory $EmoneyHistoryModelCopyWith(
          EmoneyHistoryModel value, $Res Function(EmoneyHistoryModel) then) =
      _$EmoneyHistoryModelCopyWithImpl<$Res, EmoneyHistoryModel>;
  @useResult
  $Res call(
      {int id,
      String? amount,
      String? date,
      String? transaction,
      String? status});
}

/// @nodoc
class _$EmoneyHistoryModelCopyWithImpl<$Res, $Val extends EmoneyHistoryModel>
    implements $EmoneyHistoryModelCopyWith<$Res> {
  _$EmoneyHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmoneyHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = freezed,
    Object? date = freezed,
    Object? transaction = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmoneyHistoryModelImplCopyWith<$Res>
    implements $EmoneyHistoryModelCopyWith<$Res> {
  factory _$$EmoneyHistoryModelImplCopyWith(_$EmoneyHistoryModelImpl value,
          $Res Function(_$EmoneyHistoryModelImpl) then) =
      __$$EmoneyHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? amount,
      String? date,
      String? transaction,
      String? status});
}

/// @nodoc
class __$$EmoneyHistoryModelImplCopyWithImpl<$Res>
    extends _$EmoneyHistoryModelCopyWithImpl<$Res, _$EmoneyHistoryModelImpl>
    implements _$$EmoneyHistoryModelImplCopyWith<$Res> {
  __$$EmoneyHistoryModelImplCopyWithImpl(_$EmoneyHistoryModelImpl _value,
      $Res Function(_$EmoneyHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmoneyHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = freezed,
    Object? date = freezed,
    Object? transaction = freezed,
    Object? status = freezed,
  }) {
    return _then(_$EmoneyHistoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction: freezed == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EmoneyHistoryModelImpl implements _EmoneyHistoryModel {
  const _$EmoneyHistoryModelImpl(
      {required this.id,
      this.amount,
      this.date,
      this.transaction,
      this.status});

  factory _$EmoneyHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmoneyHistoryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? amount;
  @override
  final String? date;
  @override
  final String? transaction;
  @override
  final String? status;

  @override
  String toString() {
    return 'EmoneyHistoryModel(id: $id, amount: $amount, date: $date, transaction: $transaction, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmoneyHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, date, transaction, status);

  /// Create a copy of EmoneyHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmoneyHistoryModelImplCopyWith<_$EmoneyHistoryModelImpl> get copyWith =>
      __$$EmoneyHistoryModelImplCopyWithImpl<_$EmoneyHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmoneyHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _EmoneyHistoryModel implements EmoneyHistoryModel {
  const factory _EmoneyHistoryModel(
      {required final int id,
      final String? amount,
      final String? date,
      final String? transaction,
      final String? status}) = _$EmoneyHistoryModelImpl;

  factory _EmoneyHistoryModel.fromJson(Map<String, dynamic> json) =
      _$EmoneyHistoryModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get amount;
  @override
  String? get date;
  @override
  String? get transaction;
  @override
  String? get status;

  /// Create a copy of EmoneyHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmoneyHistoryModelImplCopyWith<_$EmoneyHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
