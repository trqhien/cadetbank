import 'package:cadetbank/src/network/auth/responses/bitcoin_model.dart';

abstract class IBitcoinDatasource {
  Future<BitcoinModel> getBitcoinData();
}
