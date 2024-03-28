class ApiRequestException implements Exception {
  final int statusCode;
  final dynamic data;

  const ApiRequestException(this.statusCode, this.data);

  @override
  String toString() => '{Status code: $statusCode}';
}
