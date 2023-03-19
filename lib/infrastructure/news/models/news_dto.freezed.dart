// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
mixin _$NewsDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res, NewsDto>;
  @useResult
  $Res call({int? id, String? title, String? desc});
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res, $Val extends NewsDto>
    implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$$_NewsDtoCopyWith(
          _$_NewsDto value, $Res Function(_$_NewsDto) then) =
      __$$_NewsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? desc});
}

/// @nodoc
class __$$_NewsDtoCopyWithImpl<$Res>
    extends _$NewsDtoCopyWithImpl<$Res, _$_NewsDto>
    implements _$$_NewsDtoCopyWith<$Res> {
  __$$_NewsDtoCopyWithImpl(_$_NewsDto _value, $Res Function(_$_NewsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$_NewsDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsDto extends _NewsDto {
  _$_NewsDto({this.id, this.title, this.desc}) : super._();

  factory _$_NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? desc;

  @override
  String toString() {
    return 'NewsDto(id: $id, title: $title, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      __$$_NewsDtoCopyWithImpl<_$_NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDtoToJson(
      this,
    );
  }
}

abstract class _NewsDto extends NewsDto {
  factory _NewsDto({final int? id, final String? title, final String? desc}) =
      _$_NewsDto;
  _NewsDto._() : super._();

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$_NewsDto.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDtoCopyWith<_$_NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
