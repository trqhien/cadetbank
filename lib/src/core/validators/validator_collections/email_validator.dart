

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'email_validator.freezed.dart';

/// A valid email address has four parts:
/// * RECIPIENT_NAME
/// * @ symbol
/// * DOMAIN_NAME
/// * TOP_LEVEL_DOMAIN
/// 
/// Format: [RECIPIENT_NAME]@[DOMAIN_NAME].[TOP_LEVEL_DOMAIN]
/// 
/// Local name rules:
/// * Maximum of 64 characters long
/// * Can consist of uppercase and lowercase letters in English (A-Z, a-z)
/// * Can consist of digit from 0 to 9
/// * Can consist of special characters such as . ! # $ % & ' * + - / = ? ^ _ ` { | } ~
/// 
/// Domain name rules
/// * Can consist of uppercase and lowercase letters in English (A-Z, a-z)
/// * Can consist of digits from 0 to 9 
/// * Can consist of a hyphen (-)
/// * Can consist of a period (.)
/// 
/// Top domain name rules
/// * Can consist of uppercase and lowercase letters in English (A-Z, a-z)
class EmailValidator implements RegexValidator<EmailValidatorFailure> {
  @override
  RegExp get regex => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]{1,64}@[a-zA-Z0-9-.]+\.[a-zA-Z]+");

  @override
  Either<EmailValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return EmailValidatorFailure.asLeft(
        EmailValidatorError.invalidEmail(
          input,
          reason: "Invalid email", 
        )
      );
    }
  }

  EmailValidationError? checkError(String input) {
    final error = validate(input);

    return error.fold(
      (f) => EmailValidationError(reason: f.error.reason), 
      (_) => null
    );
  }
}

class EmailValidationError {
  final String reason;

  EmailValidationError({required this.reason});
}

class EmailValidatorFailure extends ValidationFailure<String> {
  final EmailValidatorError error;

  EmailValidatorFailure(this.error);
  
  static Left<EmailValidatorFailure, String> asLeft(EmailValidatorError error) {
    return Left(EmailValidatorFailure(error));
  }
}

@freezed
class EmailValidatorError with _$EmailValidatorError {
  EmailValidatorError._();

  factory EmailValidatorError.invalidEmail(
    String failedValue,
    {required String reason}
  ) = _InvalidEmail;

  @override
  bool operator ==(Object other) => when(
    invalidEmail: (failedValue, _) => other is _InvalidEmail && failedValue == other.failedValue,
  );

  @override
  int get hashCode => when(
    invalidEmail: (failedValue, _) => failedValue.hashCode
  );
}
