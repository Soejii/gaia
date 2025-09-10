// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'savings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavingsModel _$SavingsModelFromJson(Map<String, dynamic> json) {
  return _SavingsModel.fromJson(json);
}

/// @nodoc
mixin _$SavingsModel {
  String? get name => throw _privateConstructorUsedError;
  String? get cardId => throw _privateConstructorUsedError;
  String? get saldoTopup => throw _privateConstructorUsedError;
  String? get totalTopup => throw _privateConstructorUsedError;
  String? get totalCashout => throw _privateConstructorUsedError;

  /// Serializes this SavingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavingsModelCopyWith<SavingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavingsModelCopyWith<$Res> {
  factory $SavingsModelCopyWith(
          SavingsModel value, $Res Function(SavingsModel) then) =
      _$SavingsModelCopyWithImpl<$Res, SavingsModel>;
  @useResult
  $Res call(
      {String? name,
      String? cardId,
      String? saldoTopup,
      String? totalTopup,
      String? totalCashout});
}

/// @nodoc
class _$SavingsModelCopyWithImpl<$Res, $Val extends SavingsModel>
    implements $SavingsModelCopyWith<$Res> {
  _$SavingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cardId = freezed,
    Object? saldoTopup = freezed,
    Object? totalTopup = freezed,
    Object? totalCashout = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      saldoTopup: freezed == saldoTopup
          ? _value.saldoTopup
          : saldoTopup // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopup: freezed == totalTopup
          ? _value.totalTopup
          : totalTopup // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCashout: freezed == totalCashout
          ? _value.totalCashout
          : totalCashout // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavingsModelImplCopyWith<$Res>
    implements $SavingsModelCopyWith<$Res> {
  factory _$$SavingsModelImplCopyWith(
          _$SavingsModelImpl value, $Res Function(_$SavingsModelImpl) then) =
      __$$SavingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? cardId,
      String? saldoTopup,
      String? totalTopup,
      String? totalCashout});
}

/// @nodoc
class __$$SavingsModelImplCopyWithImpl<$Res>
    extends _$SavingsModelCopyWithImpl<$Res, _$SavingsModelImpl>
    implements _$$SavingsModelImplCopyWith<$Res> {
  __$$SavingsModelImplCopyWithImpl(
      _$SavingsModelImpl _value, $Res Function(_$SavingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cardId = freezed,
    Object? saldoTopup = freezed,
    Object? totalTopup = freezed,
    Object? totalCashout = freezed,
  }) {
    return _then(_$SavingsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      saldoTopup: freezed == saldoTopup
          ? _value.saldoTopup
          : saldoTopup // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTopup: freezed == totalTopup
          ? _value.totalTopup
          : totalTopup // ignore: cast_nullable_to_non_nullable
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
class _$SavingsModelImpl implements _SavingsModel {
  const _$SavingsModelImpl(
      {this.name,
      this.cardId,
      this.saldoTopup,
      this.totalTopup,
      this.totalCashout});

  factory _$SavingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavingsModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? cardId;
  @override
  final String? saldoTopup;
  @override
  final String? totalTopup;
  @override
  final String? totalCashout;

  @override
  String toString() {
    return 'SavingsModel(name: $name, cardId: $cardId, saldoTopup: $saldoTopup, totalTopup: $totalTopup, totalCashout: $totalCashout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.saldoTopup, saldoTopup) ||
                other.saldoTopup == saldoTopup) &&
            (identical(other.totalTopup, totalTopup) ||
                other.totalTopup == totalTopup) &&
            (identical(other.totalCashout, totalCashout) ||
                other.totalCashout == totalCashout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, cardId, saldoTopup, totalTopup, totalCashout);

  /// Create a copy of SavingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingsModelImplCopyWith<_$SavingsModelImpl> get copyWith =>
      __$$SavingsModelImplCopyWithImpl<_$SavingsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavingsModelImplToJson(
      this,
    );
  }
}

abstract class _SavingsModel implements SavingsModel {
  const factory _SavingsModel(
      {final String? name,
      final String? cardId,
      final String? saldoTopup,
      final String? totalTopup,
      final String? totalCashout}) = _$SavingsModelImpl;

  factory _SavingsModel.fromJson(Map<String, dynamic> json) =
      _$SavingsModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get cardId;
  @override
  String? get saldoTopup;
  @override
  String? get totalTopup;
  @override
  String? get totalCashout;

  /// Create a copy of SavingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavingsModelImplCopyWith<_$SavingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
