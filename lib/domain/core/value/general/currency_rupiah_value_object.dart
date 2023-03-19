import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class CurrencyRupiahValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CurrencyRupiahValue(String input) {
    assert(input != null);
    return CurrencyRupiahValue._(validateCurrencyRupiah(input));
  }

  const CurrencyRupiahValue._(this.value);
}
