import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_schedule.freezed.dart';

@freezed
abstract class CategorySchedule with _$CategorySchedule {
  const CategorySchedule._();
  const factory CategorySchedule({int? id, String? category}) =
      _CategorySchedule;
  factory CategorySchedule.empty() =>
      const CategorySchedule(category: '', id: 0);
}
