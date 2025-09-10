// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoney_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmoneyModel _$EmoneyModelFromJson(Map<String, dynamic> json) {
  return _EmoneyModel.fromJson(json);
}

/// @nodoc
mixin _$EmoneyModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get cardId => throw _privateConstructorUsedError;
  String? get saldoEmoney => throw _privateConstructorUsedError;
  String? get totalTopup => throw _privateConstructorUsedError;
  String? get totalPayment => throw _privateConstructorUsedError;
  String? get totalCashout => throw _privateConstructorUsedError;

  /// Serializes this EmoneyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmoneyModelCopyWith<EmoneyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmoneyModelCopyWith<$Res> {
  factory $EmoneyModelCopyWith(
          EmoneyModel value, $Res Function(EmoneyModel) then) =
      _$EmoneyModelCopyWithImpl<$Res, EmoneyModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? cardId,
      String? saldoEmoney,
      String? totalTopup,
      String? totalPayment,
      String? totalCashout});
}

/// @nodoc
class _$EmoneyModelCopyWithImpl<$Res, $Val extends EmoneyModel>
    implements $EmoneyModelCopyWith<$Res> {
  _$EmoneyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cardId = freezed,
    Object? saldoEmoney = freezed,
    Object? totalTopup = freezed,
    Object? totalPayment = freezed,
    Object? totalCashout = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      saldoEmoney: freezed == saldoEmoney
          ? _value.saldoEmoney
          : saldoEmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopup: freezed == totalTopup
          ? _value.totalTopup
          : totalTopup // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: freezed == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCashout: freezed == totalCashout
          ? _value.totalCashout
          : totalCashout // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmoneyModelImplCopyWith<$Res>
    implements $EmoneyModelCopyWith<$Res> {
  factory _$$EmoneyModelImplCopyWith(
          _$EmoneyModelImpl value, $Res Function(_$EmoneyModelImpl) then) =
      __$$EmoneyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? cardId,
      String? saldoEmoney,
      String? totalTopup,
      String? totalPayment,
      String? totalCashout});
}

/// @nodoc
class __$$EmoneyModelImplCopyWithImpl<$Res>
    extends _$EmoneyModelCopyWithImpl<$Res, _$EmoneyModelImpl>
    implements _$$EmoneyModelImplCopyWith<$Res> {
  __$$EmoneyModelImplCopyWithImpl(
      _$EmoneyModelImpl _value, $Res Function(_$EmoneyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cardId = freezed,
    Object? saldoEmoney = freezed,
    Object? totalTopup = freezed,
    Object? totalPayment = freezed,
    Object? totalCashout = freezed,
  }) {
    return _then(_$EmoneyModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      saldoEmoney: freezed == saldoEmoney
          ? _value.saldoEmoney
          : saldoEmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopup: freezed == totalTopup
          ? _value.totalTopup
          : totalTopup // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPayment: freezed == totalPayment
          ? _value.totalPayment
          : totalPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCashout: freezed == totalCashout
          ? _value.totalCashout
          : totalCashout // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EmoneyModelImpl implements _EmoneyModel {
  const _$EmoneyModelImpl(
      {this.id,
      this.name,
      this.cardId,
      this.saldoEmoney,
      this.totalTopup,
      this.totalPayment,
      this.totalCashout});

  factory _$EmoneyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmoneyModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? cardId;
  @override
  final String? saldoEmoney;
  @override
  final String? totalTopup;
  @override
  final String? totalPayment;
  @override
  final String? totalCashout;

  @override
  String toString() {
    return 'EmoneyModel(id: $id, name: $name, cardId: $cardId, saldoEmoney: $saldoEmoney, totalTopup: $totalTopup, totalPayment: $totalPayment, totalCashout: $totalCashout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmoneyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.saldoEmoney, saldoEmoney) ||
                other.saldoEmoney == saldoEmoney) &&
            (identical(other.totalTopup, totalTopup) ||
                other.totalTopup == totalTopup) &&
            (identical(other.totalPayment, totalPayment) ||
                other.totalPayment == totalPayment) &&
            (identical(other.totalCashout, totalCashout) ||
                other.totalCashout == totalCashout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cardId, saldoEmoney,
      totalTopup, totalPayment, totalCashout);

  /// Create a copy of EmoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmoneyModelImplCopyWith<_$EmoneyModelImpl> get copyWith =>
      __$$EmoneyModelImplCopyWithImpl<_$EmoneyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmoneyModelImplToJson(
      this,
    );
  }
}

abstract class _EmoneyModel implements EmoneyModel {
  const factory _EmoneyModel(
      {final int? id,
      final String? name,
      final String? cardId,
      final String? saldoEmoney,
      final String? totalTopup,
      final String? totalPayment,
      final String? totalCashout}) = _$EmoneyModelImpl;

  factory _EmoneyModel.fromJson(Map<String, dynamic> json) =
      _$EmoneyModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get cardId;
  @override
  String? get saldoEmoney;
  @override
  String? get totalTopup;
  @override
  String? get totalPayment;
  @override
  String? get totalCashout;

  /// Create a copy of EmoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmoneyModelImplCopyWith<_$EmoneyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
