import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class SingleLineText extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 50;

  factory SingleLineText(String input) {
    assert(input != null);
    return SingleLineText._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateSingleLine));
  }

  const SingleLineText._(this.value);
}
