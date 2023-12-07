import 'dart:async';

import 'package:cadetbank/src/network/auth/repositories/bitcoin/bitcoin_response.dart';

abstract class IBitcoinRepository {
  Future<void> getBitcoinData(BitcoinResponse response);
}
