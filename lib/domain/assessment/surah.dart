import 'package:freezed_annotation/freezed_annotation.dart';
part 'surah.freezed.dart';

@freezed
abstract class Surah with _$Surah {
  const Surah._();
  const factory Surah({
    required int? nomor,
    required String? nama_latin,
    required int? jumlah_ayat,
  }) = _Surah;

  factory Surah.empty() =>
      const Surah(jumlah_ayat: 0, nama_latin: '', nomor: 0);
}
