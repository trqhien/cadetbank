import 'package:dartz/dartz.dart';

abstract class Validator<E extends ValidationFailure<T>, T> {
  Either<E, T> validate(T input);
  // String? checkError(T input);
}

abstract class RegexValidator<E extends ValidationFailure<String>> implements Validator<E, String> {
  RegExp get regex;
}

abstract class ValidatorCollection<E extends ValidationFailure<T>, T> implements Validator<E, T> {
  List<Validator<ValidationFailure, T>> get validators;
}

class ValidationFailure<T> extends Error {}
