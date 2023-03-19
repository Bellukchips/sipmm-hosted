// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PresenceDto _$PresenceDtoFromJson(Map<String, dynamic> json) {
  return _PresenceDto.fromJson(json);
}

/// @nodoc
mixin _$PresenceDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name_operator => throw _privateConstructorUsedError;
  String? get student_name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get other_category => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get date_presence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PresenceDtoCopyWith<PresenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresenceDtoCopyWith<$Res> {
  factory $PresenceDtoCopyWith(
          PresenceDto value, $Res Function(PresenceDto) then) =
      _$PresenceDtoCopyWithImpl<$Res, PresenceDto>;
  @useResult
  $Res call(
      {int? id,
      String? name_operator,
      String? student_name,
      String? type,
      String? category,
      String? other_category,
      String? status,
      String? date_presence});
}

/// @nodoc
class _$PresenceDtoCopyWithImpl<$Res, $Val extends PresenceDto>
    implements $PresenceDtoCopyWith<$Res> {
  _$PresenceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_operator = freezed,
    Object? student_name = freezed,
    Object? type = freezed,
    Object? category = freezed,
    Object? other_category = freezed,
    Object? status = freezed,
    Object? date_presence = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_operator: freezed == name_operator
          ? _value.name_operator
          : name_operator // ignore: cast_nullable_to_non_nullable
              as String?,
      student_name: freezed == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      other_category: freezed == other_category
          ? _value.other_category
          : other_category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date_presence: freezed == date_presence
          ? _value.date_presence
          : date_presence // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PresenceDtoCopyWith<$Res>
    implements $PresenceDtoCopyWith<$Res> {
  factory _$$_PresenceDtoCopyWith(
          _$_PresenceDto value, $Res Function(_$_PresenceDto) then) =
      __$$_PresenceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name_operator,
      String? student_name,
      String? type,
      String? category,
      String? other_category,
      String? status,
      String? date_presence});
}

/// @nodoc
class __$$_PresenceDtoCopyWithImpl<$Res>
    extends _$PresenceDtoCopyWithImpl<$Res, _$_PresenceDto>
    implements _$$_PresenceDtoCopyWith<$Res> {
  __$$_PresenceDtoCopyWithImpl(
      _$_PresenceDto _value, $Res Function(_$_PresenceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_operator = freezed,
    Object? student_name = freezed,
    Object? type = freezed,
    Object? category = freezed,
    Object? other_category = freezed,
    Object? status = freezed,
    Object? date_presence = freezed,
  }) {
    return _then(_$_PresenceDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_operator: freezed == name_operator
          ? _value.name_operator
          : name_operator // ignore: cast_nullable_to_non_nullable
              as String?,
      student_name: freezed == student_name
          ? _value.student_name
          : student_name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      other_category: freezed == other_category
          ? _value.other_category
          : other_category // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date_presence: freezed == date_presence
          ? _value.date_presence
          : date_presence // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PresenceDto extends _PresenceDto {
  const _$_PresenceDto(
      {this.id,
      this.name_operator,
      this.student_name,
      this.type,
      this.category,
      this.other_category,
      this.status,
      this.date_presence})
      : super._();

  factory _$_PresenceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PresenceDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? name_operator;
  @override
  final String? student_name;
  @override
  final String? type;
  @override
  final String? category;
  @override
  final String? other_category;
  @override
  final String? status;
  @override
  final String? date_presence;

  @override
  String toString() {
    return 'PresenceDto(id: $id, name_operator: $name_operator, student_name: $student_name, type: $type, category: $category, other_category: $other_category, status: $status, date_presence: $date_presence)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PresenceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_operator, name_operator) ||
                other.name_operator == name_operator) &&
            (identical(other.student_name, student_name) ||
                other.student_name == student_name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.other_category, other_category) ||
                other.other_category == other_category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date_presence, date_presence) ||
                other.date_presence == date_presence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name_operator, student_name,
      type, category, other_category, status, date_presence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PresenceDtoCopyWith<_$_PresenceDto> get copyWith =>
      __$$_PresenceDtoCopyWithImpl<_$_PresenceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PresenceDtoToJson(
      this,
    );
  }
}

abstract class _PresenceDto extends PresenceDto {
  const factory _PresenceDto(
      {final int? id,
      final String? name_operator,
      final String? student_name,
      final String? type,
      final String? category,
      final String? other_category,
      final String? status,
      final String? date_presence}) = _$_PresenceDto;
  const _PresenceDto._() : super._();

  factory _PresenceDto.fromJson(Map<String, dynamic> json) =
      _$_PresenceDto.fromJson;

  @override
  int? get id;
  @override
  String? get name_operator;
  @override
  String? get student_name;
  @override
  String? get type;
  @override
  String? get category;
  @override
  String? get other_category;
  @override
  String? get status;
  @override
  String? get date_presence;
  @override
  @JsonKey(ignore: true)
  _$$_PresenceDtoCopyWith<_$_PresenceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
