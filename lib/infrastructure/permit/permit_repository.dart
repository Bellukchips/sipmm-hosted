import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/permit_failure/permit_failure.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/permit/i_permit_repository.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/domain/permit/permit_count.dart';
import 'package:sipmm/domain/permit/save_permit.dart';
import 'package:sipmm/domain/permit/permit_form.dart';
import 'package:sipmm/infrastructure/permit/models/permit/permit_dto.dart';
import 'package:sipmm/infrastructure/permit/models/permit_count/permit_count_dto.dart';
import 'package:sipmm/infrastructure/permit/models/save_permit/save_permit_dto.dart';

@LazySingleton(as: IPermitRepository)
class PermitRepository implements IPermitRepository {
  final Dio _network;

  PermitRepository(this._network);
  @override
  Future<Either<PermitFailure, PermitCount>> getPermitCount() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      final response = await _network.get('/app/permit/history/count');
      if (response.statusCode == 200) {
        var result = response.data['data'];
        return right(PermitCountDto.fromJson(result).toDomain());
      }
      if (response.statusCode == 401) {
        return left(const PermitFailure.unauthenticated());
      }
      return left(const PermitFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PermitFailure.serverError());
      } else if (status == '401') {
        return left(const PermitFailure.unauthenticated());
      } else {
        return left(PermitFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PermitFailure, SavePermit>> savePermit(PermitForm form) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final title = form.title?.getOrCrash();
      final desc = form.description?.getOrCrash();
      final date = form.date_permit?.getOrCrash();
      var savePermit = await _network.post('/app/permit/save',
          data: {"title": title, "description": desc, "date_permit": date});
      if (savePermit.statusCode == 200) {
        var result = savePermit.data['data']['permit'];
        return right(SavePermitDto.fromJson(result).toDomain());
      }
      if (savePermit.statusCode == 401) {
        return left(const PermitFailure.unauthenticated());
      }
      return left(const PermitFailure.unexpected('Something went wrong'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PermitFailure.serverError());
      } else if (status == '401') {
        return left(const PermitFailure.unauthenticated());
      } else {
        return left(PermitFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PermitFailure, List<Permit>>> getHistoryPermit(
      {String date = ''}) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var news = await _network
          .get('/app/permit/history', queryParameters: {'date': date});
      if (news.statusCode == 200) {
        var result = news.data['data']['permit'];
        if (result is List) {
          List<Permit> listPermit = result
              .map((news) => PermitDto.fromJson(news).toDomain())
              .whereType<Permit>()
              .toList();
          return right(listPermit);
        } else {
          return left(const PermitFailure.unexpected('Invalid data format'));
        }
      }
      if (news.statusCode == 401) {
        return left(const PermitFailure.unauthenticated());
      }
      return left(const PermitFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PermitFailure.serverError());
      } else if (status == '401') {
        return left(const PermitFailure.unauthenticated());
      } else {
        return left(PermitFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PermitFailure, SavePermit>> deletePermit(int id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      var deletePermit = await _network.delete(
        '/app/permit/$id/delete',
      );
      if (deletePermit.statusCode == 200) {
        var result = deletePermit.data['data']['permit'];
        return right(SavePermitDto.fromJson(result).toDomain());
      }
      if (deletePermit.statusCode == 401) {
        return left(const PermitFailure.unauthenticated());
      }
      return left(const PermitFailure.unexpected('Something went wrong'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PermitFailure.serverError());
      } else if (status == '401') {
        return left(const PermitFailure.unauthenticated());
      } else {
        return left(PermitFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<PermitFailure, SavePermit>> updatePermit(
      PermitForm form, NumberValue id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      final title = form.title?.getOrCrash();
      final desc = form.description?.getOrCrash();
      final date = form.date_permit?.getOrCrash();
      final idPermit = id.getOrCrash();
      var savePermit = await _network.post('/app/permit/$idPermit/update',
          data: {"title": title, "description": desc, "date_permit": date});
      if (savePermit.statusCode == 200) {
        var result = savePermit.data['data']['permit'];
        return right(SavePermitDto.fromJson(result).toDomain());
      }
      if (savePermit.statusCode == 401) {
        return left(const PermitFailure.unauthenticated());
      }
      return left(const PermitFailure.unexpected('Something went wrong'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const PermitFailure.serverError());
      } else if (status == '401') {
        return left(const PermitFailure.unauthenticated());
      } else {
        return left(PermitFailure.unexpected(e.message));
      }
    }
  }
}
