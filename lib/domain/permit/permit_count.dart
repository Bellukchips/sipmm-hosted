import 'package:freezed_annotation/freezed_annotation.dart';
part 'permit_count.freezed.dart';

@freezed
abstract class PermitCount with _$PermitCount {
  const PermitCount._();

  const factory PermitCount({required int? total}) = _PermitCount;

  factory PermitCount.empty() => const PermitCount(total: 0);
}
