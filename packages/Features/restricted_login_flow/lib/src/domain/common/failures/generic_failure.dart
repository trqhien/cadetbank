import 'package:restricted_login_flow/src/domain/common/common.dart';

class GenericFailure extends Failure {
  final String exception;

  GenericFailure(this.exception);

  @override
  String get message => exception;
}
