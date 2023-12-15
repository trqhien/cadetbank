import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validators/src/validator.dart';

part 'text_length_validator.freezed.dart';

class TextLengthValidator implements Validator<TextLengthValidatorFailure, String> {
  final int min;
  final int? max;

  TextLengthValidator({
    this.min = 0, 
    this.max
  }) : assert(max == null || min < max, "Min must be smaller than max");

  @override
  Either<TextLengthValidatorFailure, String> validate(String input) {
    final currentLength = input.length;

    if (currentLength < min) {
      return TextLengthValidatorFailure.asLeft(
        TextLengthValidatorError.lessThanMin(min: min, max: max, failedValue: input)
      );
    } else if (max != null && currentLength > max!) {
      return TextLengthValidatorFailure.asLeft(
        TextLengthValidatorError.greaterThanMax(min: min, max: max!, failedValue: input)
      );
    }

    return right(input);
  }
}

class TextLengthValidatorFailure extends ValidationFailure<String> {
  final TextLengthValidatorError error;

  TextLengthValidatorFailure(this.error);
  
  static Left<TextLengthValidatorFailure, String> asLeft(TextLengthValidatorError error) {
    return Left(TextLengthValidatorFailure(error));
  }
}

@freezed
class TextLengthValidatorError with _$TextLengthValidatorError {
  const factory TextLengthValidatorError.lessThanMin({
    required int min,
    int? max,
    required String failedValue
  }) = _LessThanOrEqualToMin;

  const factory TextLengthValidatorError.greaterThanMax({
    int? min,
    required int max,
    required String failedValue
  }) = _GreaterThanMax;
}
