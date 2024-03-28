import 'package:equatable/equatable.dart';

class Balances extends Equatable {
  final double walletBalance;
  final double savingsBalance;

  const Balances({required this.walletBalance, required this.savingsBalance});

  @override
  List<Object?> get props => [walletBalance, savingsBalance];
}
