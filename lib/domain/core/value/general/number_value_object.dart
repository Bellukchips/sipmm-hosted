import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class NumberValue extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  factory NumberValue(int input) {
    assert(input != null);
    return NumberValue._(validateNumber(input));
  }

  const NumberValue._(this.value);
}
