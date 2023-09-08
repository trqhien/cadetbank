

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'mobile_phone_validator.freezed.dart';

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
class MobilePhoneValidator implements RegexValidator<MobilePhoneValidatorFailure> {
  @override
  RegExp get regex => RegExp(r"^\d{9,10}$");


  @override
  Either<MobilePhoneValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return MobilePhoneValidatorFailure.asLeft(
        MobilePhoneValidatorError.invalidPhoneNumber(
          input,
          reason: "Invalid phone number", 
        )
      );
    }
  }

  MobilePhoneValidationError? checkError(String input) {
    final error = validate(input);
    return error.fold(
      (f) => MobilePhoneValidationError(reason: f.error.reason), 
      (_) => null
    );
  }
}

class MobilePhoneValidationError {
  final String reason;

  MobilePhoneValidationError({required this.reason});
}

class MobilePhoneValidatorFailure extends ValidationFailure<String> {
  final MobilePhoneValidatorError error;

  MobilePhoneValidatorFailure(this.error);
  
  static Left<MobilePhoneValidatorFailure, String> asLeft(MobilePhoneValidatorError error) {
    return Left(MobilePhoneValidatorFailure(error));
  }
}

@freezed
class MobilePhoneValidatorError with _$MobilePhoneValidatorError {
  MobilePhoneValidatorError._();

  factory MobilePhoneValidatorError.invalidPhoneNumber(
    String failedValue,
    {required String reason}
  ) = _InvalidEmail;

  @override
  bool operator ==(Object other) => when(
    invalidPhoneNumber: (failedValue, _) => other is _InvalidEmail && failedValue == other.failedValue,
  );

  @override
  int get hashCode => when(
    invalidPhoneNumber: (failedValue, _) => failedValue.hashCode
  );
}
