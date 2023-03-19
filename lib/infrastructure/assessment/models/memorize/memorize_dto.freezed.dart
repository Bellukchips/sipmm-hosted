// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memorize_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemorizeDto _$MemorizeDtoFromJson(Map<String, dynamic> json) {
  return _MemorizeDto.fromJson(json);
}

/// @nodoc
mixin _$MemorizeDto {
  int? get id => throw _privateConstructorUsedError;
  int? get student_id => throw _privateConstructorUsedError;
  String? get verse => throw _privateConstructorUsedError;
  String? get surah => throw _privateConstructorUsedError;
  String? get score => throw _privateConstructorUsedError;
  String? get date_assessment => throw _privateConstructorUsedError;
  String? get tester => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemorizeDtoCopyWith<MemorizeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizeDtoCopyWith<$Res> {
  factory $MemorizeDtoCopyWith(
          MemorizeDto value, $Res Function(MemorizeDto) then) =
      _$MemorizeDtoCopyWithImpl<$Res, MemorizeDto>;
  @useResult
  $Res call(
      {int? id,
      int? student_id,
      String? verse,
      String? surah,
      String? score,
      String? date_assessment,
      String? tester});
}

/// @nodoc
class _$MemorizeDtoCopyWithImpl<$Res, $Val extends MemorizeDto>
    implements $MemorizeDtoCopyWith<$Res> {
  _$MemorizeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student_id = freezed,
    Object? verse = freezed,
    Object? surah = freezed,
    Object? score = freezed,
    Object? date_assessment = freezed,
    Object? tester = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      date_assessment: freezed == date_assessment
          ? _value.date_assessment
          : date_assessment // ignore: cast_nullable_to_non_nullable
              as String?,
      tester: freezed == tester
          ? _value.tester
          : tester // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MemorizeDtoCopyWith<$Res>
    implements $MemorizeDtoCopyWith<$Res> {
  factory _$$_MemorizeDtoCopyWith(
          _$_MemorizeDto value, $Res Function(_$_MemorizeDto) then) =
      __$$_MemorizeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? student_id,
      String? verse,
      String? surah,
      String? score,
      String? date_assessment,
      String? tester});
}

/// @nodoc
class __$$_MemorizeDtoCopyWithImpl<$Res>
    extends _$MemorizeDtoCopyWithImpl<$Res, _$_MemorizeDto>
    implements _$$_MemorizeDtoCopyWith<$Res> {
  __$$_MemorizeDtoCopyWithImpl(
      _$_MemorizeDto _value, $Res Function(_$_MemorizeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? student_id = freezed,
    Object? verse = freezed,
    Object? surah = freezed,
    Object? score = freezed,
    Object? date_assessment = freezed,
    Object? tester = freezed,
  }) {
    return _then(_$_MemorizeDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      student_id: freezed == student_id
          ? _value.student_id
          : student_id // ignore: cast_nullable_to_non_nullable
              as int?,
      verse: freezed == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as String?,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String?,
      date_assessment: freezed == date_assessment
          ? _value.date_assessment
          : date_assessment // ignore: cast_nullable_to_non_nullable
              as String?,
      tester: freezed == tester
          ? _value.tester
          : tester // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemorizeDto extends _MemorizeDto {
  const _$_MemorizeDto(
      {this.id,
      this.student_id,
      this.verse,
      this.surah,
      this.score,
      this.date_assessment,
      this.tester})
      : super._();

  factory _$_MemorizeDto.fromJson(Map<String, dynamic> json) =>
      _$$_MemorizeDtoFromJson(json);

  @override
  final int? id;
  @override
  final int? student_id;
  @override
  final String? verse;
  @override
  final String? surah;
  @override
  final String? score;
  @override
  final String? date_assessment;
  @override
  final String? tester;

  @override
  String toString() {
    return 'MemorizeDto(id: $id, student_id: $student_id, verse: $verse, surah: $surah, score: $score, date_assessment: $date_assessment, tester: $tester)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemorizeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student_id, student_id) ||
                other.student_id == student_id) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.date_assessment, date_assessment) ||
                other.date_assessment == date_assessment) &&
            (identical(other.tester, tester) || other.tester == tester));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, student_id, verse, surah,
      score, date_assessment, tester);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemorizeDtoCopyWith<_$_MemorizeDto> get copyWith =>
      __$$_MemorizeDtoCopyWithImpl<_$_MemorizeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemorizeDtoToJson(
      this,
    );
  }
}

abstract class _MemorizeDto extends MemorizeDto {
  const factory _MemorizeDto(
      {final int? id,
      final int? student_id,
      final String? verse,
      final String? surah,
      final String? score,
      final String? date_assessment,
      final String? tester}) = _$_MemorizeDto;
  const _MemorizeDto._() : super._();

  factory _MemorizeDto.fromJson(Map<String, dynamic> json) =
      _$_MemorizeDto.fromJson;

  @override
  int? get id;
  @override
  int? get student_id;
  @override
  String? get verse;
  @override
  String? get surah;
  @override
  String? get score;
  @override
  String? get date_assessment;
  @override
  String? get tester;
  @override
  @JsonKey(ignore: true)
  _$$_MemorizeDtoCopyWith<_$_MemorizeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
