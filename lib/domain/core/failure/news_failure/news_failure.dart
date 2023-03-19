import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_failure.freezed.dart';

@freezed
abstract class NewsFailure with _$NewsFailure {
  const factory NewsFailure.unexpected([String? error]) = _Unexpected;
  const factory NewsFailure.serverError() = _ServerError;
  const factory NewsFailure.unauthenticated() = _Unauthenticated;
}
