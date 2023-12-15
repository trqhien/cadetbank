import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validators/src/validator.dart';

part 'has_lowercase_validator.freezed.dart';

class HasLowercaseValidator implements RegexValidator<HasLowercaseValidatorFailure> {
  final int leastAmount;

  @override
  RegExp get regex => RegExp("^(?=(?:.*[a-z]){$leastAmount}).*\$");

  HasLowercaseValidator({this.leastAmount = 1});

  @override
  Either<HasLowercaseValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return HasLowercaseValidatorFailure.asLeft(
        HasLowercaseValidatorError.notEnoughLowercaseLetter(
          leastAmount: leastAmount,
          failedValue: input,
        )
      );
    }
  }
}

class HasLowercaseValidatorFailure extends ValidationFailure<String> {
  final HasLowercaseValidatorError error;

  HasLowercaseValidatorFailure(this.error);
  
  static Left<HasLowercaseValidatorFailure, String> asLeft(HasLowercaseValidatorError error) {
    return Left(HasLowercaseValidatorFailure(error));
  }
}

@freezed
class HasLowercaseValidatorError with _$HasLowercaseValidatorError {
  const factory HasLowercaseValidatorError.notEnoughLowercaseLetter({
    required int leastAmount,
    required String failedValue
  }) = _NotEnoughLowercaseLetter;
}
