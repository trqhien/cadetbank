import 'package:dartz/dartz.dart';
import 'package:restricted_login_flow/src/domain/common/common.dart';

abstract class FCICodeRepository {
  Future<Either<Failure, String>> getFCICode();
}
