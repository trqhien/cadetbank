// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:di_containers/src/di_external_modules.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network/network.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalModuleDependencies = _$ExternalModuleDependencies();
    gh.factory<_i3.Dio>(
      () => externalModuleDependencies.dioMaya,
      instanceName: 'api-test.paymaya.com',
    );
    gh.factory<_i3.Dio>(
      () => externalModuleDependencies.dioCadetbank,
      instanceName: 'cadetbank',
    );
    return this;
  }
}

class _$ExternalModuleDependencies extends _i4.ExternalModuleDependencies {}
