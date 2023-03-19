import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final Exception failure;
  factory EmailAddress(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final Exception failure;
  factory Password(String input) {
    // ignore: unnecessary_null_comparison
    assert(input != null);
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}
