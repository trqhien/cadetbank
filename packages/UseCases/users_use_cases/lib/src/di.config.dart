// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network/network.dart' as _i3;
import 'package:users_use_cases/src/di_module.dart' as _i6;
import 'package:users_use_cases/src/implementations/users_service.dart' as _i5;
import 'package:users_use_cases/src/interfaces/i_users_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

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
      () => externalModuleDependencies.dio,
      instanceName: 'dio_users_use_cases',
    );
    gh.factory<_i4.IUsersService>(() =>
        _i5.UsersService(gh<_i3.Dio>(instanceName: 'dio_users_use_cases')));
    return this;
  }
}

class _$ExternalModuleDependencies extends _i6.ExternalModuleDependencies {}
