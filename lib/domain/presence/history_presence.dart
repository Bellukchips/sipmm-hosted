import 'package:freezed_annotation/freezed_annotation.dart';
part 'history_presence.freezed.dart';

@freezed
abstract class PresenceHistory with _$PresenceHistory {
  const PresenceHistory._();
  const factory PresenceHistory(
      {int? id,
      String? name_operator,
      String? student_name,
      String? type,
      String? category,
      String? other_category,
      String? status,
      String? date_presence}) = _PresenceHistory;

  factory PresenceHistory.empty() => const PresenceHistory(
      category: '',
      date_presence: '',
      id: 0,
      name_operator: '',
      other_category: '',
      status: '',
      student_name: '',
      type: '');
}
