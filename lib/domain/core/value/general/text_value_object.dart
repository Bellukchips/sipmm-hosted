import 'package:dartz/dartz.dart';

import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class TextValueObject extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;
  factory TextValueObject(String input) {
    assert(input != null);

    return TextValueObject._(validateMaxStringLength(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }

  const TextValueObject._(this.value);
}
