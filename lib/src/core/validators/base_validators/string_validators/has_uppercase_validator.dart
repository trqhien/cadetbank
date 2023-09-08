

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'has_uppercase_validator.freezed.dart';

class HasUppercaseValidator implements RegexValidator<HasUppercaseValidatorFailure> {
  final int leastAmount;

  @override
  RegExp get regex => RegExp("^(?=(?:.*[A-Z]){$leastAmount}).*\$");

  HasUppercaseValidator({this.leastAmount = 1});

  @override
  Either<HasUppercaseValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return HasUppercaseValidatorFailure.asLeft(
        HasUppercaseValidatorError.notEnoughUppercaseLetter(
          leastAmount: leastAmount,
          failedValue: input, 
        )
      );
    }
  }
}

class HasUppercaseValidatorFailure extends ValidationFailure<String> {
  final HasUppercaseValidatorError error;

  HasUppercaseValidatorFailure(this.error);
  
  static Left<HasUppercaseValidatorFailure, String> asLeft(HasUppercaseValidatorError error) {
    return Left(HasUppercaseValidatorFailure(error));
  }
}

@freezed
class HasUppercaseValidatorError with _$HasUppercaseValidatorError {
  const factory HasUppercaseValidatorError.notEnoughUppercaseLetter({
    required int leastAmount,
    required String failedValue
  }) = _NotEnoughUppercaseLetter;
}
