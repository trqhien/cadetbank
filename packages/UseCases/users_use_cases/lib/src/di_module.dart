import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module  
abstract class ExternalModuleDependencies {    
  @Named("dio_users_use_cases")
  @injectable
  Dio get dio => DioClient.createDioInstance();
} 