import 'package:cadetbank/src/core/validators/validator_errors.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/src/core/validators/base_validators/string_validators/text_length_validator.dart';
import 'package:cadetbank/src/core/validators/validator.dart';

part 'username_validator.freezed.dart';

/// Rules:
/// * MUST be 3 to 24 characters in length
/// * MUST contain letters
/// * CAN have numbers, periods or underscores
class UsernameValidator implements ValidatorCollection<UsernameValidatorFailure, String> {
  @override
  List<Validator<ValidationFailure, String>> get validators => [
    TextLengthValidator(min: 3, max: 24),
    UsernameRegexValidator(),
  ];

  @override
  Either<UsernameValidatorFailure, String> validate(String input) {
    List<UsernameValidatorError> errors = [];

    for (final v in validators) {
      final result = v.validate(input);

      if (result.isRight()) continue;

      final failure = result.fold(
        (l) => l, 
        (_) => throw UnexpectedError()
      );

      if (failure is TextLengthValidatorFailure) {
        errors.add(UsernameValidatorError.lengthValidatorError(
          failure.error,
          reason: failure.error.when(
            lessThanMin: (min, max, val) => "Your @username should be $min to ${max!} characters in length. Current is ${val.length}", 
            greaterThanMax: (min, max, val) => "Your @username should be ${min!} to $max characters in length. Current is ${val.length}",
          )
        ));
      } else if (failure is UsernameRegexValidatorFailure) {
        errors.add(
          UsernameValidatorError.regexValidatorError(
            failure.error,
            reason: "Your @username MUST contain letters, can contain numbers, period or underscore"
          )
        );
      } else {
        throw UnexpectedError();
      }
    }

    if (errors.isNotEmpty) {
      return UsernameValidatorFailure.asLeft(errors);
    } else {
      return right(input);
    }
  }

  UsernameValidationError? checkError(String input) {
    final error = validate(input);

    return error.fold(
      (f) => UsernameValidationError(reason: f.errors.first.reason), 
      (_) => null
    );
  }
}

class UsernameValidationError {
  final String reason;

  UsernameValidationError({required this.reason});
}


class UsernameValidatorFailure extends ValidationFailure<String> {
  final List<UsernameValidatorError> errors;

  UsernameValidatorFailure(this.errors);
  
  static Left<UsernameValidatorFailure, String> asLeft(List<UsernameValidatorError> errors) {
    return Left(UsernameValidatorFailure(errors));
  }

  bool get containsLengthValidatorError => errors
    .any((e) => e.isLengthValidatorError);

  bool get containsRegexValidatorError => errors
    .any((e) => e.isRegexValidatorError);
}

@freezed
class UsernameValidatorError with _$UsernameValidatorError {
  UsernameValidatorError._();

  factory UsernameValidatorError.lengthValidatorError(
    TextLengthValidatorError error,
    {required String reason}
  ) = _LengthValidatorError;
  
  factory UsernameValidatorError.regexValidatorError(
    UsernameRegexValidatorError error,
    {required String reason}
  ) = _RegexValidatorError;

  @override
  Object get error => when(
    lengthValidatorError: (err, _) => err, 
    regexValidatorError: (err, _) => err, 
  );

  @override
  bool operator ==(Object other) => when(
    lengthValidatorError: (err, _) => other is _LengthValidatorError && err == other.error,
    regexValidatorError: (err, _) => other is _RegexValidatorError && err == other.error, 
  );

  @override
  int get hashCode => when(
    lengthValidatorError: (err, _) => err.hashCode, 
    regexValidatorError: (err, _) => err.hashCode, 
  );

  bool get isLengthValidatorError => when(
    lengthValidatorError: (_, __) => true, 
    regexValidatorError: (_, __) => false
  );

  bool get isRegexValidatorError => when(
    lengthValidatorError: (_, __) => false, 
    regexValidatorError: (_, __) => true
  );
}

class UsernameRegexValidator implements RegexValidator<UsernameRegexValidatorFailure> {
  @override
  RegExp get regex => RegExp(r'^[a-zA-Z]+[a-zA-Z0-9._]*$');

  @override
  Either<UsernameRegexValidatorFailure, String> validate(String input) {
    if (regex.hasMatch(input)) {
      return right(input);
    } else {
      return UsernameRegexValidatorFailure.asLeft(
        UsernameRegexValidatorError.invalidUsername(
          input,
          reason: "Invalid email", 
        )
      );
    }
  }
}

class UsernameRegexValidatorFailure extends ValidationFailure<String> {
  final UsernameRegexValidatorError error;

  UsernameRegexValidatorFailure(this.error);
  
  static Left<UsernameRegexValidatorFailure, String> asLeft(UsernameRegexValidatorError error) {
    return Left(UsernameRegexValidatorFailure(error));
  }
}

@freezed
class UsernameRegexValidatorError with _$UsernameRegexValidatorError {
  UsernameRegexValidatorError._();

  factory UsernameRegexValidatorError.invalidUsername(
    String failedValue,
    {required String reason}
  ) = _InvalidUsername;

  @override
  bool operator ==(Object other) => when(
    invalidUsername: (failedValue, _) => other is _InvalidUsername && failedValue == other.failedValue,
  );

  @override
  int get hashCode => when(
    invalidUsername: (failedValue, _) => failedValue.hashCode
  );
}
