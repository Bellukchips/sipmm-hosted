import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sipmm/domain/news/news.dart';
part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  const NewsDto._();
  factory NewsDto({int? id, String? title, String? desc}) = _NewsDto;

  //domain
  News toDomain() {
    return News(id: id, title: title, desc: desc);
  }

  factory NewsDto.fromDomain(News news) {
    return NewsDto(id: news.id, title: news.title, desc: news.desc);
  }

  factory NewsDto.empty() => NewsDto(id: 0, desc: '', title: '');

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}
