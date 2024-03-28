import 'package:restricted_login_flow/src/data/data_sources/fci_code/fci_code_datasource.dart';
import 'package:restricted_login_flow/src/domain/common/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:restricted_login_flow/src/domain/common/failures/generic_failure.dart';
import 'package:restricted_login_flow/src/domain/repositories/fcicode_repository.dart';

class FCICodeRepositoryImpl implements FCICodeRepository {
  final FCICodeDataSource dataSource;

  FCICodeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, String>> getFCICode() async {
    try {
      final String fciCode = await dataSource.getFCICode();
      return Right(
        fciCode,
      );
    } on Exception catch (e) {
      return Left(
        GenericFailure(e.toString()),
      );
    }
  }
}
