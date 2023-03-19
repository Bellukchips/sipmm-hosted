import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // const passwordRegex = r"""^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$""";
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.singleLine(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateNumber(int input) {
  const numberRegex = r"""^[-+]?\d+(\.\d+)?$""";
  if (RegExp(numberRegex).hasMatch(input.toString())) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDate(String input) {
  const dateRegex = r"""^\d{4}-\d{2}-\d{2}$""";

  if (RegExp(dateRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}

Either<ValueFailure<File>, File> validateImage(File file) {
  final imgRegex = RegExp(r'^.*\.(jpg|jpeg|png)$');
  if (imgRegex.hasMatch(file.path)) {
    return right(file);
  } else {
    return left(ValueFailure.invalidImage(failedValue: file));
  }
}

Either<ValueFailure<String>, String> validateCurrencyRupiah(String input) {
  const rupiah = r"""(?<=Rp\s)(\d{1,3}(\.\d{3})*|\d+)(,\d{2})?""";
  if (RegExp(rupiah).hasMatch(input)) {
    var result =
        input.replaceAll(',', '').replaceAll('Rp', '').replaceAll('.', '');
    return right(result);
  } else {
    return left(ValueFailure.invalidCurrencyRupiah(failedValue: input));
  }
}
