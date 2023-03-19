import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class DateValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory DateValue(String input) {
    assert(input != null);
    return DateValue._(validateDate(input));
  }

  const DateValue._(this.value);
}
