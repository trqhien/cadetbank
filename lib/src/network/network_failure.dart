class NetworkFailure {
  final Object? error;
  final String message;

  NetworkFailure(this.message, {this.error});

  @override
  String toString() => error?.toString() ?? message;
}