// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleModel {
  int get id => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  SubjectModel get subject => throw _privateConstructorUsedError;
  TeacherModel get teacher => throw _privateConstructorUsedError;

  /// Serializes this ScheduleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res, ScheduleModel>;
  @useResult
  $Res call(
      {int id,
      String day,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      SubjectModel subject,
      TeacherModel teacher});

  $SubjectModelCopyWith<$Res> get subject;
  $TeacherModelCopyWith<$Res> get teacher;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res, $Val extends ScheduleModel>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? subject = null,
    Object? teacher = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectModel,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel,
    ) as $Val);
  }

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectModelCopyWith<$Res> get subject {
    return $SubjectModelCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeacherModelCopyWith<$Res> get teacher {
    return $TeacherModelCopyWith<$Res>(_value.teacher, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleModelImplCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$ScheduleModelImplCopyWith(
          _$ScheduleModelImpl value, $Res Function(_$ScheduleModelImpl) then) =
      __$$ScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String day,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      SubjectModel subject,
      TeacherModel teacher});

  @override
  $SubjectModelCopyWith<$Res> get subject;
  @override
  $TeacherModelCopyWith<$Res> get teacher;
}

/// @nodoc
class __$$ScheduleModelImplCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res, _$ScheduleModelImpl>
    implements _$$ScheduleModelImplCopyWith<$Res> {
  __$$ScheduleModelImplCopyWithImpl(
      _$ScheduleModelImpl _value, $Res Function(_$ScheduleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? subject = null,
    Object? teacher = null,
  }) {
    return _then(_$ScheduleModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectModel,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as TeacherModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleModelImpl implements _ScheduleModel {
  const _$ScheduleModelImpl(
      {required this.id,
      required this.day,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      required this.subject,
      required this.teacher});

  factory _$ScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleModelImplFromJson(json);

  @override
  final int id;
  @override
  final String day;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final SubjectModel subject;
  @override
  final TeacherModel teacher;

  @override
  String toString() {
    return 'ScheduleModel(id: $id, day: $day, startTime: $startTime, endTime: $endTime, subject: $subject, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, day, startTime, endTime, subject, teacher);

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      __$$ScheduleModelImplCopyWithImpl<_$ScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  const factory _ScheduleModel(
      {required final int id,
      required final String day,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      required final SubjectModel subject,
      required final TeacherModel teacher}) = _$ScheduleModelImpl;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleModelImpl.fromJson;

  @override
  int get id;
  @override
  String get day;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  SubjectModel get subject;
  @override
  TeacherModel get teacher;

  /// Create a copy of ScheduleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
