import 'package:cadetbank/src/network/auth/datasource/bitcoin_datasource.dart';
import 'package:cadetbank/src/network/auth/repositories/bitcoin/bitcoin_repository.dart';
import 'package:cadetbank/src/network/auth/repositories/bitcoin/bitcoin_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BitcoinProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _error;
  double _bitcoinUSDPrice = 0;

  bool get isLoading => _isLoading;
  String? get error => _error;
  double get bitcoinUSDPrice => _bitcoinUSDPrice;

  Future<void> getLatestBitcoinPrice() async {
    // This can be refactored to implement a proper dependency injection
    final dio = Dio();
    final datasource = BitcoinRestClient(dio);
    final repository = BitcoinRepository(datasource);
    _error = null;
    _isLoading = true;
    notifyListeners();

    await repository.getBitcoinData(
      BitcoinResponse(
        onSuccess: (bitcoinData) {
          _bitcoinUSDPrice = bitcoinData.bitcoinUSDPrice;
        },
        onError: (error) {
          _error = error.toString();
        },
      ),
    );

    _isLoading = false;
    notifyListeners();
  }
}
