import 'package:restricted_login_flow/src/data/models/wallet_balance_response_model/wallet_balance_response_model.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'wallet_remote_datasource.g.dart';

@RestApi()
abstract class WalletRemoteDataSource {
  factory WalletRemoteDataSource(Dio dio) = _WalletRemoteDataSource;

  @GET(Endpoints.walletBalance)
  Future<WalletBalanceResponseModel>? getBalance();
}
