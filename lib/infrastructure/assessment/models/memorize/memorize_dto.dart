import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/assessment/memorize.dart';
part 'memorize_dto.freezed.dart';
part 'memorize_dto.g.dart';

@freezed
class MemorizeDto with _$MemorizeDto {
  const MemorizeDto._();

  const factory MemorizeDto(
      {int? id,
      int? student_id,
      String? verse,
      String? surah,
      String? score,
      String? date_assessment,
      String? tester}) = _MemorizeDto;

  Memorize toDomain() {
    return Memorize(
        id: id,
        student_id: student_id,
        verse: verse,
        surah: surah,
        score: score,
        date_assessment: date_assessment,
        tester: tester);
  }

  factory MemorizeDto.empty() => const MemorizeDto(
      id: 0,
      score: '',
      date_assessment: '',
      student_id: 0,
      surah: '',
      tester: '',
      verse: '',);

  factory MemorizeDto.fromDomain(Memorize memo) {
    return MemorizeDto(
        id: memo.id,
        date_assessment: memo.date_assessment,
        score: memo.score,
        student_id: memo.student_id,
        surah: memo.surah,
        tester: memo.tester,
        verse: memo.verse);
  }

  factory MemorizeDto.fromJson(Map<String, dynamic> json) =>
      _$MemorizeDtoFromJson(json);
}
