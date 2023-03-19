import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sipmm/domain/core/failure/failure.dart';
import 'package:sipmm/domain/core/value/value_objects.dart';
import 'package:sipmm/domain/core/value/value_validator.dart';

class FileImageValue extends ValueObject<File> {
  @override
  final Either<ValueFailure<File>, File> value;
  factory FileImageValue(File input) {
    assert(input != null);
    return FileImageValue._(validateImage(input));
  }

  const FileImageValue._(this.value);

  String get filePath {
    return value.fold((l) => 'Error Failed Get Path', (r) => r.path);
  }
}
