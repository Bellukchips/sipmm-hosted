import 'package:freezed_annotation/freezed_annotation.dart';
part 'presence_count.freezed.dart';

@freezed
abstract class PresenceCount with _$PresenceCount {
  const PresenceCount._();
  const factory PresenceCount({required int? total}) = _PresenceCount;

  factory PresenceCount.empty() => const PresenceCount(total: 0);
}
