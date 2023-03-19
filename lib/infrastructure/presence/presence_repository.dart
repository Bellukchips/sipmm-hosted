import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/presence/history_presence.dart';
import 'package:sipmm/domain/core/failure/presence_failure/presence_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/presence/i_presence_repository.dart';
import 'package:sipmm/domain/presence/presence_type.dart';
import 'package:sipmm/domain/presence/presence_count.dart';
import 'package:sipmm/infrastructure/presence/models/history_presence/presence_dto.dart';
import 'package:sipmm/infrastructure/presence/models/presence_count/presence_count_dto.dart';
import 'package:sipmm/infrastructure/presence/models/presence_type/presence_type_dto.dart';

@LazySingleton(as: IPresenceRepository)
class PresenceRepository implements IPresenceRepository {
  final Dio _network;

  PresenceRepository(this._network);

  @override
  Future<Either<PresenceFailure, List<PresenceType>>> getTypePresence() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network.get('/app/presence/type');
      if (response.statusCode == 200) {
        var result = response.data['data']['presence'];
        if (result is List) {
          List<PresenceType> type = result
              .map((e) => PresenceTypeDto.fromJson(e).toDomain())
              .whereType<PresenceType>()
              .toList();
          return right(type);
        }
      }
      if (response.statusCode == 401) {
        return left(const PresenceFailure.unexpected());
      }

      return left(const PresenceFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PresenceFailure.serverError());
      } else if (status == '401') {
        return left(const PresenceFailure.unauthenticated());
      } else {
        return left(PresenceFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PresenceFailure, List<PresenceHistory>>> getHistoryPresence(
      String date, int type) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network.get('/app/presence/history',
          queryParameters: {"type": type, "date": date});
      if (response.statusCode == 200) {
        var result = response.data['data']['presence'];
        if (result is List) {
          List<PresenceHistory> presence = result
              .map((e) => PresenceDto.fromJson(e).toDomain())
              .whereType<PresenceHistory>()
              .toList();
          return right(presence);
        }
      }
      if (response.statusCode == 401) {
        return left(const PresenceFailure.unexpected());
      }

      return left(const PresenceFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PresenceFailure.serverError());
      } else if (status == '401') {
        return left(const PresenceFailure.unauthenticated());
      } else {
        return left(PresenceFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PresenceFailure, PresenceCount>> getCountPresence(
      int? type) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network
          .get('/app/presence/history/count', queryParameters: {"type": type});
      if (response.statusCode == 200) {
        var result = response.data['data'];
        return right(PresenceCountDto.fromJson(result).toDomain());
      }
      if (response.statusCode == 401) {
        return left(const PresenceFailure.unexpected());
      }

      return left(const PresenceFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PresenceFailure.serverError());
      } else if (status == '401') {
        return left(const PresenceFailure.unauthenticated());
      } else {
        return left(PresenceFailure.unexpected(e.message));
      }
    }
  }
}
