

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'has_special_character_validator.freezed.dart';

/// This validator ensure that an inout of type [String] will always have at least
/// x special characters. `x` is defined through the constructor, default is 1
/// 
/// Special characters include: !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~ and SPACE. 
/// Ref: https://owasp.org/www-community/password-special-characters 
class HasSpecialCharacterValidator implements RegexValidator<HasSpecialCharacterValidatorFailure> {
  final int leastAmount;

  @override
  // ignore: avoid_escaping_inner_quotes
  RegExp get regex => RegExp("^(?=(?:.*[\\s!\"#\$%&'()*+,-./:;<=>?@\\\\[\\]^_`{|}~]){$leastAmount}).*\$");

  HasSpecialCharacterValidator({this.leastAmount = 1});

  @override
  Either<HasSpecialCharacterValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return HasSpecialCharacterValidatorFailure.asLeft(
        HasSpecialCharacterValidatorError.notEnoughSpecialCharacter(
          leastAmount: leastAmount,
          failedValue: input, 
        )
      );
    }
  }
}

class HasSpecialCharacterValidatorFailure extends ValidationFailure<String> {
  final HasSpecialCharacterValidatorError error;

  HasSpecialCharacterValidatorFailure(this.error);
  
  static Left<HasSpecialCharacterValidatorFailure, String> asLeft(HasSpecialCharacterValidatorError error) {
    return Left(HasSpecialCharacterValidatorFailure(error));
  }
}

@freezed
class HasSpecialCharacterValidatorError with _$HasSpecialCharacterValidatorError {
  const factory HasSpecialCharacterValidatorError.notEnoughSpecialCharacter({
    required int leastAmount,
    required String failedValue
  }) = _NotEnoughSpecialCharacter;
}
