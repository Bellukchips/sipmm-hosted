import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/schedule_failure/schedule_failure.dart';
import 'package:sipmm/domain/schedule/schedule.dart';

import 'category_schedule.dart';

abstract class IScheduleRepository {
  Future<Either<ScheduleFailure, List<Schedule>>> getSchedule(
      {String category, String day});
  Future<Either<ScheduleFailure, List<CategorySchedule>>> getCategorySchedule();
}
