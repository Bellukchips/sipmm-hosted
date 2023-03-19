import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sipmm/domain/core/failure/schedule_failure/schedule_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/schedule/category_schedule.dart';
import 'package:sipmm/domain/schedule/i_schedule_repository.dart';
import 'package:sipmm/domain/schedule/schedule.dart';
import 'package:sipmm/infrastructure/schedule/models/schedule/schedule_dto.dart';

import 'models/category/category_schedule_dto.dart';

@LazySingleton(as: IScheduleRepository)
class ScheduleRepository implements IScheduleRepository {
  final Dio _network;

  ScheduleRepository(this._network);
  @override
  Future<Either<ScheduleFailure, List<Schedule>>> getSchedule(
      {String category = '', String day = ''}) async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network.get('/app/schedules',
          queryParameters: {"category": category, "day": day});
      if (response.statusCode == 200) {
        var result = response.data['data'];
        if (result is List) {
          List<Schedule> listSchedule = result
              .map((schedule) => ScheduleDto.fromJson(schedule).toDomain())
              .whereType<Schedule>()
              .toList();
          return right(listSchedule);
        } else {
          return left(const ScheduleFailure.unexpected('Something Went Wrong'));
        }
      }
      if (response.statusCode == 401) {
        return left(const ScheduleFailure.unauthenticated());
      }
      return left(const ScheduleFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const ScheduleFailure.serverError());
      } else if (status == '401') {
        return left(const ScheduleFailure.unauthenticated());
      } else {
        return left(ScheduleFailure.unexpected(e.message));
      }
    }
  }

  @override
  Future<Either<ScheduleFailure, List<CategorySchedule>>>
      getCategorySchedule() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      var response = await _network.get('/app/schedules/category');
      if (response.statusCode == 200) {
        var result = response.data['data'];
        if (result is List) {
          List<CategorySchedule> listSchedule = result
              .map((schedule) =>
                  CategoryScheduleDto.fromJson(schedule).toDomain())
              .whereType<CategorySchedule>()
              .toList();
          return right(listSchedule);
        } else {
          return left(const ScheduleFailure.unexpected('Something Went Wrong'));
        }
      }
      if (response.statusCode == 401) {
        return left(const ScheduleFailure.unauthenticated());
      }
      return left(const ScheduleFailure.unexpected('Opps Error'));
    } on DioError catch (e) {
      var status = e.response?.statusCode?.toString();

      if (status == '500') {
        return left(const ScheduleFailure.serverError());
      } else if (status == '401') {
        return left(const ScheduleFailure.unauthenticated());
      } else {
        return left(ScheduleFailure.unexpected(e.message));
      }
    }
  }
}
