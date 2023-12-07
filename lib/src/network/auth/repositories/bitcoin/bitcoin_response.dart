import 'package:cadetbank/src/network/auth/responses/bitcoin_model.dart';

class BitcoinResponse {
  final void Function(BitcoinModel) onSuccess;
  final void Function(Error) onError;

  BitcoinResponse({required this.onSuccess, required this.onError});
}
