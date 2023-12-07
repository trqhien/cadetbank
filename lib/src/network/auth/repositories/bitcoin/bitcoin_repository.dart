import 'dart:async';

import 'package:cadetbank/src/network/auth/datasource/bitcoin_datasource.dart';
import 'package:cadetbank/src/network/auth/repositories/bitcoin/bitcoin_response.dart';

abstract class IBitcoinRepository {
  Future<void> getBitcoinData(BitcoinResponse response);
}

class BitcoinRepository implements IBitcoinRepository {
  final IBitcoinDatasource _datasource;

  BitcoinRepository(this._datasource);

  @override
  Future<void> getBitcoinData(BitcoinResponse response) async {
    try {
      final data = await _datasource.getBitcoinData();
      response.onSuccess(data);
    } on Exception catch (exception, stackTrace) {
      response.onError(AsyncError(exception, stackTrace));
    } on Error catch (error, _) {
      response.onError(error);
    }
  }
}
