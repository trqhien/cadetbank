import 'package:restricted_login_flow/src/domain/common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:restricted_login_flow/src/domain/repositories/fcicode_repository.dart';

class GetFCICode with NoParamUseCases<Either<Failure, String>> {
  final FCICodeRepository repository;

  GetFCICode(this.repository);

  @override
  Future<Either<Failure, String>?>? call() async {
    return repository.getFCICode();
  }
}
