import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/permit_failure/permit_failure.dart';
import 'package:sipmm/domain/core/value/general/number_value_object.dart';
import 'package:sipmm/domain/permit/permit.dart';
import 'package:sipmm/domain/permit/permit_count.dart';
import 'package:sipmm/domain/permit/permit_form.dart';
import 'package:sipmm/domain/permit/save_permit.dart';

abstract class IPermitRepository {
  Future<Either<PermitFailure, PermitCount>> getPermitCount();
  Future<Either<PermitFailure, List<Permit>>> getHistoryPermit(
      {String date = ''});
  Future<Either<PermitFailure, SavePermit>> savePermit(PermitForm form);
  Future<Either<PermitFailure, SavePermit>> deletePermit(int id);
  Future<Either<PermitFailure, SavePermit>> updatePermit(PermitForm form, NumberValue id);
}
