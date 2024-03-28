import 'package:restricted_login_flow/src/data/models/savings_accounts_response_model/savings_accounts_response_model.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'savings_accounts_remote_datasource.g.dart';

@RestApi()
abstract class SavingsAccountsRemoteDataSource {
  factory SavingsAccountsRemoteDataSource(Dio dio) =
      _SavingsAccountsRemoteDataSource;

  @GET(Endpoints.savingsAccounts)
  Future<SavingsAccountsResponseModel>? getSavingsAccounts();
}
