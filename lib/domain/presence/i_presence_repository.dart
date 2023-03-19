import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/presence_failure/presence_failure.dart';
import 'package:sipmm/domain/presence/history_presence.dart';
import 'package:sipmm/domain/presence/presence_count.dart';
import 'package:sipmm/domain/presence/presence_type.dart';

abstract class IPresenceRepository {
  Future<Either<PresenceFailure, List<PresenceHistory>>> getHistoryPresence(
      String date, int type);
  Future<Either<PresenceFailure, List<PresenceType>>> getTypePresence();
  Future<Either<PresenceFailure, PresenceCount>> getCountPresence(int? type);
}
