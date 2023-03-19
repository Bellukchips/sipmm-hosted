// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleDto.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDto {
  String? get teacher_name => throw _privateConstructorUsedError;
  String? get course_name => throw _privateConstructorUsedError;
  String? get class_name => throw _privateConstructorUsedError;
  int? get class_id => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get times => throw _privateConstructorUsedError;
  int? get id_schedules => throw _privateConstructorUsedError;
  String? get categorie_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDtoCopyWith<ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDtoCopyWith<$Res> {
  factory $ScheduleDtoCopyWith(
          ScheduleDto value, $Res Function(ScheduleDto) then) =
      _$ScheduleDtoCopyWithImpl<$Res, ScheduleDto>;
  @useResult
  $Res call(
      {String? teacher_name,
      String? course_name,
      String? class_name,
      int? class_id,
      String? day,
      String? times,
      int? id_schedules,
      String? categorie_name});
}

/// @nodoc
class _$ScheduleDtoCopyWithImpl<$Res, $Val extends ScheduleDto>
    implements $ScheduleDtoCopyWith<$Res> {
  _$ScheduleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher_name = freezed,
    Object? course_name = freezed,
    Object? class_name = freezed,
    Object? class_id = freezed,
    Object? day = freezed,
    Object? times = freezed,
    Object? id_schedules = freezed,
    Object? categorie_name = freezed,
  }) {
    return _then(_value.copyWith(
      teacher_name: freezed == teacher_name
          ? _value.teacher_name
          : teacher_name // ignore: cast_nullable_to_non_nullable
              as String?,
      course_name: freezed == course_name
          ? _value.course_name
          : course_name // ignore: cast_nullable_to_non_nullable
              as String?,
      class_name: freezed == class_name
          ? _value.class_name
          : class_name // ignore: cast_nullable_to_non_nullable
              as String?,
      class_id: freezed == class_id
          ? _value.class_id
          : class_id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String?,
      id_schedules: freezed == id_schedules
          ? _value.id_schedules
          : id_schedules // ignore: cast_nullable_to_non_nullable
              as int?,
      categorie_name: freezed == categorie_name
          ? _value.categorie_name
          : categorie_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleDtoCopyWith<$Res>
    implements $ScheduleDtoCopyWith<$Res> {
  factory _$$_ScheduleDtoCopyWith(
          _$_ScheduleDto value, $Res Function(_$_ScheduleDto) then) =
      __$$_ScheduleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? teacher_name,
      String? course_name,
      String? class_name,
      int? class_id,
      String? day,
      String? times,
      int? id_schedules,
      String? categorie_name});
}

/// @nodoc
class __$$_ScheduleDtoCopyWithImpl<$Res>
    extends _$ScheduleDtoCopyWithImpl<$Res, _$_ScheduleDto>
    implements _$$_ScheduleDtoCopyWith<$Res> {
  __$$_ScheduleDtoCopyWithImpl(
      _$_ScheduleDto _value, $Res Function(_$_ScheduleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher_name = freezed,
    Object? course_name = freezed,
    Object? class_name = freezed,
    Object? class_id = freezed,
    Object? day = freezed,
    Object? times = freezed,
    Object? id_schedules = freezed,
    Object? categorie_name = freezed,
  }) {
    return _then(_$_ScheduleDto(
      teacher_name: freezed == teacher_name
          ? _value.teacher_name
          : teacher_name // ignore: cast_nullable_to_non_nullable
              as String?,
      course_name: freezed == course_name
          ? _value.course_name
          : course_name // ignore: cast_nullable_to_non_nullable
              as String?,
      class_name: freezed == class_name
          ? _value.class_name
          : class_name // ignore: cast_nullable_to_non_nullable
              as String?,
      class_id: freezed == class_id
          ? _value.class_id
          : class_id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      times: freezed == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as String?,
      id_schedules: freezed == id_schedules
          ? _value.id_schedules
          : id_schedules // ignore: cast_nullable_to_non_nullable
              as int?,
      categorie_name: freezed == categorie_name
          ? _value.categorie_name
          : categorie_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDto extends _ScheduleDto {
  const _$_ScheduleDto(
      {this.teacher_name,
      this.course_name,
      this.class_name,
      this.class_id,
      this.day,
      this.times,
      this.id_schedules,
      this.categorie_name})
      : super._();

  factory _$_ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDtoFromJson(json);

  @override
  final String? teacher_name;
  @override
  final String? course_name;
  @override
  final String? class_name;
  @override
  final int? class_id;
  @override
  final String? day;
  @override
  final String? times;
  @override
  final int? id_schedules;
  @override
  final String? categorie_name;

  @override
  String toString() {
    return 'ScheduleDto(teacher_name: $teacher_name, course_name: $course_name, class_name: $class_name, class_id: $class_id, day: $day, times: $times, id_schedules: $id_schedules, categorie_name: $categorie_name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDto &&
            (identical(other.teacher_name, teacher_name) ||
                other.teacher_name == teacher_name) &&
            (identical(other.course_name, course_name) ||
                other.course_name == course_name) &&
            (identical(other.class_name, class_name) ||
                other.class_name == class_name) &&
            (identical(other.class_id, class_id) ||
                other.class_id == class_id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.times, times) || other.times == times) &&
            (identical(other.id_schedules, id_schedules) ||
                other.id_schedules == id_schedules) &&
            (identical(other.categorie_name, categorie_name) ||
                other.categorie_name == categorie_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, teacher_name, course_name,
      class_name, class_id, day, times, id_schedules, categorie_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      __$$_ScheduleDtoCopyWithImpl<_$_ScheduleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDtoToJson(
      this,
    );
  }
}

abstract class _ScheduleDto extends ScheduleDto {
  const factory _ScheduleDto(
      {final String? teacher_name,
      final String? course_name,
      final String? class_name,
      final int? class_id,
      final String? day,
      final String? times,
      final int? id_schedules,
      final String? categorie_name}) = _$_ScheduleDto;
  const _ScheduleDto._() : super._();

  factory _ScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDto.fromJson;

  @override
  String? get teacher_name;
  @override
  String? get course_name;
  @override
  String? get class_name;
  @override
  int? get class_id;
  @override
  String? get day;
  @override
  String? get times;
  @override
  int? get id_schedules;
  @override
  String? get categorie_name;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
