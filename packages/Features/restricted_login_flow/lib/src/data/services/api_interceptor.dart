import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:restricted_login_flow/src/domain/common/common.dart';

Future<Either<Failure, R>> apiInterceptor<R>(Future<R>? Function() func) async {
  try {
    final res = await func();
    return Right(res as R);
  } on ApiRequestException catch (e) {
    return Left(ApiRequestFailure(e.data, e.statusCode));
  } on ApiResponseException catch (e) {
    debugPrint(e.toString());
    return Left(ApiResponseFailure(errMessage: e.exceptionMessage));
  }
}
