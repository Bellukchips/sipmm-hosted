// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Surah {
  int? get nomor => throw _privateConstructorUsedError;
  String? get nama_latin => throw _privateConstructorUsedError;
  int? get jumlah_ayat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call({int? nomor, String? nama_latin, int? jumlah_ayat});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

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
abstract class _$$_SurahCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$_SurahCopyWith(_$_Surah value, $Res Function(_$_Surah) then) =
      __$$_SurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? nomor, String? nama_latin, int? jumlah_ayat});
}

/// @nodoc
class __$$_SurahCopyWithImpl<$Res> extends _$SurahCopyWithImpl<$Res, _$_Surah>
    implements _$$_SurahCopyWith<$Res> {
  __$$_SurahCopyWithImpl(_$_Surah _value, $Res Function(_$_Surah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama_latin = freezed,
    Object? jumlah_ayat = freezed,
  }) {
    return _then(_$_Surah(
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

class _$_Surah extends _Surah {
  const _$_Surah(
      {required this.nomor,
      required this.nama_latin,
      required this.jumlah_ayat})
      : super._();

  @override
  final int? nomor;
  @override
  final String? nama_latin;
  @override
  final int? jumlah_ayat;

  @override
  String toString() {
    return 'Surah(nomor: $nomor, nama_latin: $nama_latin, jumlah_ayat: $jumlah_ayat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surah &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama_latin, nama_latin) ||
                other.nama_latin == nama_latin) &&
            (identical(other.jumlah_ayat, jumlah_ayat) ||
                other.jumlah_ayat == jumlah_ayat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nomor, nama_latin, jumlah_ayat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      __$$_SurahCopyWithImpl<_$_Surah>(this, _$identity);
}

abstract class _Surah extends Surah {
  const factory _Surah(
      {required final int? nomor,
      required final String? nama_latin,
      required final int? jumlah_ayat}) = _$_Surah;
  const _Surah._() : super._();

  @override
  int? get nomor;
  @override
  String? get nama_latin;
  @override
  int? get jumlah_ayat;
  @override
  @JsonKey(ignore: true)
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      throw _privateConstructorUsedError;
}
