import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'has_numeric_letter_validator.freezed.dart';

class HasNumericLetterValidator implements RegexValidator<HasNumericLetterValidatorFailure> {
  final int leastAmount;

  @override
  RegExp get regex => RegExp("^(?=(?:.*[0-9]){$leastAmount}).*\$");

  HasNumericLetterValidator({this.leastAmount = 1});

  @override
  Either<HasNumericLetterValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return HasNumericLetterValidatorFailure.asLeft(
        HasNumericLetterValidatorError.notEnoughNumericLetter(
          leastAmount: leastAmount,
          failedValue: input, 
        )
      );
    }
  }
}

class HasNumericLetterValidatorFailure extends ValidationFailure<String> {
  final HasNumericLetterValidatorError error;

  HasNumericLetterValidatorFailure(this.error);
  
  static Left<HasNumericLetterValidatorFailure, String> asLeft(HasNumericLetterValidatorError error) {
    return Left(HasNumericLetterValidatorFailure(error));
  }
}

@freezed
class HasNumericLetterValidatorError with _$HasNumericLetterValidatorError {
  const factory HasNumericLetterValidatorError.notEnoughNumericLetter({
    required int leastAmount,
    required String failedValue
  }) = _NotEnoughNumericLetter;
}
