import 'package:freezed_annotation/freezed_annotation.dart';
part 'presence_type.freezed.dart';

@freezed
abstract class PresenceType with _$PresenceType {
  const PresenceType._();
  const factory PresenceType({
    required int? id,
    required String? name,
    required String? categories,
  }) = _PreseanceType;

  factory PresenceType.empty() =>
      const PresenceType(id: 0, name: '', categories: '');
}
