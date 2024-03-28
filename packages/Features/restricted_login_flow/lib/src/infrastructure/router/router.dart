import 'package:flutter/widgets.dart';

abstract class IRouter {
  RouterConfig<Object> initialize();

  void goToRoute({required String path});
}
