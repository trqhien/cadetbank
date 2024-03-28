import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:restricted_login_flow/src/infrastructure/crash_monitoring/crash_monitoring_helper.dart';
import 'package:restricted_login_flow/src/infrastructure/dependency_injection/get_it/get_it_injector_impl.dart';
import 'package:restricted_login_flow/src/infrastructure/dio/dio.dart';
import 'package:restricted_login_flow/src/infrastructure/maya_method_channel/maya_method_channel.dart';
import 'package:restricted_login_flow/src/infrastructure/router/impls/go_router_impl.dart';
import 'package:restricted_login_flow/src/infrastructure/router/router.dart';

@module
abstract class ExternalPackageDependencies {
  @LazySingleton(env: prodEnvironments)
  IRouter get router => GoRouterImpl();

  @LazySingleton(env: prodEnvironments)
  Dio get dio => DioHelper.createDioInstance(
        serviceLocator.get(),
        serviceLocator.get(),
      );

  @LazySingleton(env: prodEnvironments)
  ICrashMonitoringHelper get crashMonitoringHelper => CrashMonitoringHelper();

  @LazySingleton(env: prodEnvironments)
  IMayaMethodChannel get mayaMethodChannel => AppMethodChannel();
}
