import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module  
abstract class ExternalModuleDependencies {    
  @Named("dio_auth_use_cases")
  @injectable
  Dio get dio => DioClient.createDioInstance();
} 