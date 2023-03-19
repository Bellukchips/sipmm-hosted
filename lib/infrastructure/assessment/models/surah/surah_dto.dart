import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/assessment/surah.dart';
part 'surah_dto.freezed.dart';
part 'surah_dto.g.dart';

@freezed
class SurahDto with _$SurahDto {
  const SurahDto._();
  const factory SurahDto({int? nomor, String? nama_latin, int? jumlah_ayat}) =
      _SurahDto;

  Surah toDomain() {
    return Surah(
        jumlah_ayat: jumlah_ayat, nama_latin: nama_latin, nomor: nomor);
  }

  factory SurahDto.fromDomain(Surah surah) {
    return SurahDto(
        jumlah_ayat: surah.jumlah_ayat,
        nama_latin: surah.nama_latin,
        nomor: surah.nomor);
  }

  factory SurahDto.fromJson(Map<String, dynamic> json) =>
      _$SurahDtoFromJson(json);
}
