import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/schedule/category_schedule.dart';
part 'category_schedule_dto.freezed.dart';
part 'category_schedule_dto.g.dart';

@freezed
class CategoryScheduleDto with _$CategoryScheduleDto {
  const CategoryScheduleDto._();
  const factory CategoryScheduleDto({int? id, String? categorie_name}) =
      _CategoryScheduleDto;
  CategorySchedule toDomain() {
    return CategorySchedule(category: categorie_name, id: id);
  }

  factory CategoryScheduleDto.fromDomain(CategorySchedule s) {
    return CategoryScheduleDto(categorie_name: s.category, id: s.id);
  }
  factory CategoryScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryScheduleDtoFromJson(json);
  factory CategoryScheduleDto.empty() =>
      const CategoryScheduleDto(categorie_name: '', id: 0);
}
