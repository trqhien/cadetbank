import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:validators/src/validator.dart';

part 'list_length_validator.freezed.dart';

class ListLengthValidator<V> implements Validator<ListLengthValidatorFailure<V>, List<V>> {
  final int? min;
  final int? max;

  ListLengthValidator({
    this.min, 
    this.max
  }) : assert(min != null || max != null, "Either min of max MUST not be null"),
       assert(
         (min == null && max != null)
         || (max == null && min != null)
         || (min! < max!),
         "Min must be less than max"
       );

  @override
  Either<ListLengthValidatorFailure<V>, List<V>> validate(List<V> input) {
    final currentSize = input.length;

    if (min != null && currentSize < min!) {
      return ListLengthValidatorFailure.asLeft(
        ListLengthValidatorError.lengthIsLessThanMin(min: min!, failedValue: input)
      );
    } else if (max != null && currentSize > max!) {
      return ListLengthValidatorFailure.asLeft(
        ListLengthValidatorError.lengthIsGreaterThanMax(max: max!, failedValue: input)
      );
    }

    return right(input);
  }
}

class ListLengthValidatorFailure<V> extends ValidationFailure<List<V>> {
  final ListLengthValidatorError error;

  ListLengthValidatorFailure(this.error);
  
  static Left<ListLengthValidatorFailure<V>, List<V>> asLeft<V>(
    ListLengthValidatorError error
  ) => Left(ListLengthValidatorFailure(error));
}

@freezed
class ListLengthValidatorError<V> with _$ListLengthValidatorError<V> {
  const factory ListLengthValidatorError.lengthIsLessThanMin({
    required int min,
    required List<V> failedValue
  }) = _LengthIsLessThanMin;

  const factory ListLengthValidatorError.lengthIsGreaterThanMax({
    required int max,
    required List<V> failedValue
  }) = _LengthIsGreaterThanMax;
}
