import 'package:freezed_annotation/freezed_annotation.dart';
part 'news.freezed.dart';

@freezed
abstract class News with _$News {
  const News._();

  const factory News(
      {required int? id,
      required String? title,
      required String? desc}) = _News;

  factory News.empty() => const News(id: 0, title: '', desc: '');
}
