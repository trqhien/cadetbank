

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'single_line_validator.freezed.dart';

class SingleLineValidator implements Validator<SingleLineValidatorFailure, String> {
  @override
  Either<SingleLineValidatorFailure, String> validate(String input) {
    if (input.contains("\n")) {
      return SingleLineValidatorFailure.asLeft(
        SingleLineValidatorError.notSingleLine(failedValue: input)
      );
    } else {
      return right(input);
    }
  }
}

class SingleLineValidatorFailure extends ValidationFailure<String> {
  final SingleLineValidatorError error;

  SingleLineValidatorFailure(this.error);
  
  static Left<SingleLineValidatorFailure, String> asLeft(SingleLineValidatorError error) {
    return Left(SingleLineValidatorFailure(error));
  }
}

@freezed
class SingleLineValidatorError with _$SingleLineValidatorError {
  const factory SingleLineValidatorError.notSingleLine({
    required String failedValue}
  ) = _NotSingleLine;
}
