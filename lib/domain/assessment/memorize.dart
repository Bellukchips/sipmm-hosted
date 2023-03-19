import 'package:freezed_annotation/freezed_annotation.dart';
part 'memorize.freezed.dart';

@freezed
abstract class Memorize with _$Memorize {
  const Memorize._();
  const factory Memorize(
      {required int? id,
      required int? student_id,
      required String? verse,
      required String? surah,
      required String? score,
      required String? date_assessment,
      required String? tester}) = _Memorize;

  factory Memorize.empty() => const Memorize(
      id: 0,
      student_id: 0,
      verse: '',
      surah: '',
      score: '',
      date_assessment: '',
      tester: '');
}
