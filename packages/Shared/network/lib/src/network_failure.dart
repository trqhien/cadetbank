class CadetNetworkFailure {
  final Object? error;
  final String message;

  CadetNetworkFailure(this.message, {this.error});

  @override
  String toString() => error?.toString() ?? message;
}