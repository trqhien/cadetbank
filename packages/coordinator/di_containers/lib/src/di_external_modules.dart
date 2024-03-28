import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@module  
abstract class ExternalModuleDependencies {    
  @Named("api-test.paymaya.com")
  @injectable
  Dio get dioMaya => DioClient.createMayaDioInstance(baseUrl: "https://api-test.paymaya.com/client-staging");

  @Named("cadetbank")
  @injectable
  Dio get dioCadetbank => DioClient.createDioInstance();
} 
