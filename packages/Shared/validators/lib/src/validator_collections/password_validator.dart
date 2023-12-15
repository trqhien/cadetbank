import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validators/src/base_validators/string_validators/has_lowercase_validator.dart';
import 'package:validators/src/base_validators/string_validators/has_numeric_letter_validator.dart';
import 'package:validators/src/base_validators/string_validators/has_special_character_validator.dart';
import 'package:validators/src/base_validators/string_validators/has_uppercase_validator.dart';
import 'package:validators/src/base_validators/string_validators/text_length_validator.dart';
import 'package:validators/src/validator.dart';
import 'package:validators/src/validator_errors.dart';

part 'password_validator.freezed.dart';

/// Rules:
/// * MUST have at lease 1 lowercase letter
/// * MUST have at lease 1 uppercase letter
/// * MUST have at lease 1 numeric letter
/// * MUST have at lease 1 special character letter
/// * MUST contain at lease 8 characters in length
class PasswordValidator implements ValidatorCollection<PasswordValidatorFailure, String> {
  @override
  List<Validator<ValidationFailure, String>> get validators => [
    TextLengthValidator(min: 8),
    HasNumericLetterValidator(),
    HasUppercaseValidator(),
    HasLowercaseValidator(),
    HasSpecialCharacterValidator()
  ];

  @override
  Either<PasswordValidatorFailure, String> validate(String input) {
    List<PasswordValidatorError> errors = [];

    for (final v in validators) {
      final result = v.validate(input);

      if (result.isRight()) continue;

      final failure = result.fold(
        (l) => l, 
        (_) => throw UnexpectedError()
      );

      if (failure is TextLengthValidatorFailure) {
        errors.add(PasswordValidatorError.lengthValidatorError(
          failure.error,
          reason: "Password length must be greater than ${failure.error.maybeWhen(lessThanMin: (min, _, __) => min, orElse: () => null)}. Current is ${failure.error.failedValue.length}"
        ));
      } else if (failure is HasUppercaseValidatorFailure) {
        errors.add(
          PasswordValidatorError.uppercaseValidatorError(
            failure.error,
            reason: "Password must contain at least ${failure.error.leastAmount}  uppercase letter"
          )
        );
      } else if (failure is HasLowercaseValidatorFailure) {
        errors.add(
          PasswordValidatorError.lowercaseValidatorError(
            failure.error,
            reason: "Password must contain at least ${failure.error.leastAmount} lowercase letter"
          )
        );
      } else if (failure is HasSpecialCharacterValidatorFailure) {
        errors.add(
          PasswordValidatorError.specialCharacterValidatorError(
            failure.error,
            reason: "Password must contain at least ${failure.error.leastAmount} special character"
          )
        );
      } else if (failure is HasNumericLetterValidatorFailure) {
        errors.add(
          PasswordValidatorError.numericCharacterValidatorError(
            failure.error,
            reason: "Password must contain at least ${failure.error.leastAmount} number"
          )
        );
      } else {
        throw UnexpectedError();
      }
    }

    if (errors.isNotEmpty) {
      return PasswordValidatorFailure.asLeft(errors);
    } else {
      return right(input);
    }
  }

  PasswordValidationError? checkError(String input) {
    final error = validate(input);

    return error.fold(
      (f) => PasswordValidationError(reason: f.errors.first.reason), 
      (_) => null
    );
  }
}

class PasswordValidationError {
  final String reason;

  PasswordValidationError({required this.reason});
}


class PasswordValidatorFailure extends ValidationFailure<String> {
  final List<PasswordValidatorError> errors;

  PasswordValidatorFailure(this.errors);
  
  static Left<PasswordValidatorFailure, String> asLeft(List<PasswordValidatorError> errors) {
    return Left(PasswordValidatorFailure(errors));
  }
}

@freezed
class PasswordValidatorError with _$PasswordValidatorError {
  PasswordValidatorError._();

  factory PasswordValidatorError.lengthValidatorError(
    TextLengthValidatorError error,
    {required String reason}
  ) = _LengthValidatorError;
  factory PasswordValidatorError.uppercaseValidatorError(
    HasUppercaseValidatorError error,
    {required String reason}
  ) = _UppercaseValidatorError;
  factory PasswordValidatorError.lowercaseValidatorError(
    HasLowercaseValidatorError error,
    {required String reason}
  ) = _LowercaseValidatorError;
  factory PasswordValidatorError.numericCharacterValidatorError(
    HasNumericLetterValidatorError error,
    {required String reason}
  ) = _NumericCharacterValidatorError;
  factory PasswordValidatorError.specialCharacterValidatorError(
    HasSpecialCharacterValidatorError error,
    {required String reason}
  ) = _SpecialCharacterValidatorError;

  @override
  Object get error => when(
    lengthValidatorError: (err, _) => err, 
    uppercaseValidatorError: (err, _) => err, 
    lowercaseValidatorError: (err, _) => err, 
    numericCharacterValidatorError: (err, _) => err, 
    specialCharacterValidatorError: (err, _) => err
  );

  @override
  bool operator ==(Object other) => when(
    lengthValidatorError: (err, _) => other is _LengthValidatorError && err == other.error,
    uppercaseValidatorError: (err, _) => other is _UppercaseValidatorError && err == other.error, 
    lowercaseValidatorError: (err, _) => other is _LowercaseValidatorError && err == other.error, 
    numericCharacterValidatorError: (err, _) => other is _NumericCharacterValidatorError && err == other.error, 
    specialCharacterValidatorError: (err, _) => other is _SpecialCharacterValidatorError && err == other.error,
  );

  @override
  int get hashCode => when(
    lengthValidatorError: (err, _) => err.hashCode, 
    uppercaseValidatorError: (err, _) => err.hashCode, 
    lowercaseValidatorError: (err, _) => err.hashCode, 
    numericCharacterValidatorError: (err, _) => err.hashCode, 
    specialCharacterValidatorError: (err, _) => err.hashCode
  );
}
