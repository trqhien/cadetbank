// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network/network.dart' as _i4;
import 'package:paymaya_dev_login/src/data/dev_login_repository.dart' as _i5;
import 'package:paymaya_dev_login/src/data/dev_login_rest_client.dart'
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
    gh.factory<_i3.DevLoginRestClient>(() => _i3.DevLoginRestClient(
        gh<_i4.Dio>(instanceName: 'api-test.paymaya.com')));
    gh.factory<_i5.DevLoginRepository>(
        () => _i5.DevLoginRepository(gh<_i3.DevLoginRestClient>()));
    return this;
  }
}
