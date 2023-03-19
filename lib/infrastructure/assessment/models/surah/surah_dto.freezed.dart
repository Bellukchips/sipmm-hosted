// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurahDto _$SurahDtoFromJson(Map<String, dynamic> json) {
  return _SurahDto.fromJson(json);
}

/// @nodoc
mixin _$SurahDto {
  int? get nomor => throw _privateConstructorUsedError;
  String? get nama_latin => throw _privateConstructorUsedError;
  int? get jumlah_ayat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahDtoCopyWith<SurahDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDtoCopyWith<$Res> {
  factory $SurahDtoCopyWith(SurahDto value, $Res Function(SurahDto) then) =
      _$SurahDtoCopyWithImpl<$Res, SurahDto>;
  @useResult
  $Res call({int? nomor, String? nama_latin, int? jumlah_ayat});
}

/// @nodoc
class _$SurahDtoCopyWithImpl<$Res, $Val extends SurahDto>
    implements $SurahDtoCopyWith<$Res> {
  _$SurahDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama_latin = freezed,
    Object? jumlah_ayat = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama_latin: freezed == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_ayat: freezed == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahDtoCopyWith<$Res> implements $SurahDtoCopyWith<$Res> {
  factory _$$_SurahDtoCopyWith(
          _$_SurahDto value, $Res Function(_$_SurahDto) then) =
      __$$_SurahDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? nomor, String? nama_latin, int? jumlah_ayat});
}

/// @nodoc
class __$$_SurahDtoCopyWithImpl<$Res>
    extends _$SurahDtoCopyWithImpl<$Res, _$_SurahDto>
    implements _$$_SurahDtoCopyWith<$Res> {
  __$$_SurahDtoCopyWithImpl(
      _$_SurahDto _value, $Res Function(_$_SurahDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama_latin = freezed,
    Object? jumlah_ayat = freezed,
  }) {
    return _then(_$_SurahDto(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama_latin: freezed == nama_latin
          ? _value.nama_latin
          : nama_latin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlah_ayat: freezed == jumlah_ayat
          ? _value.jumlah_ayat
          : jumlah_ayat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurahDto extends _SurahDto {
  const _$_SurahDto({this.nomor, this.nama_latin, this.jumlah_ayat})
      : super._();

  factory _$_SurahDto.fromJson(Map<String, dynamic> json) =>
      _$$_SurahDtoFromJson(json);

  @override
  final int? nomor;
  @override
  final String? nama_latin;
  @override
  final int? jumlah_ayat;

  @override
  String toString() {
    return 'SurahDto(nomor: $nomor, nama_latin: $nama_latin, jumlah_ayat: $jumlah_ayat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurahDto &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama_latin, nama_latin) ||
                other.nama_latin == nama_latin) &&
            (identical(other.jumlah_ayat, jumlah_ayat) ||
                other.jumlah_ayat == jumlah_ayat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nomor, nama_latin, jumlah_ayat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahDtoCopyWith<_$_SurahDto> get copyWith =>
      __$$_SurahDtoCopyWithImpl<_$_SurahDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahDtoToJson(
      this,
    );
  }
}

abstract class _SurahDto extends SurahDto {
  const factory _SurahDto(
      {final int? nomor,
      final String? nama_latin,
      final int? jumlah_ayat}) = _$_SurahDto;
  const _SurahDto._() : super._();

  factory _SurahDto.fromJson(Map<String, dynamic> json) = _$_SurahDto.fromJson;

  @override
  int? get nomor;
  @override
  String? get nama_latin;
  @override
  int? get jumlah_ayat;
  @override
  @JsonKey(ignore: true)
  _$$_SurahDtoCopyWith<_$_SurahDto> get copyWith =>
      throw _privateConstructorUsedError;
}
