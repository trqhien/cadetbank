import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';
import 'package:network/network.dart';
// import 'package:paymaya_dev_login/src/commons/dev_constants.dart';
// import 'package:paymaya_dev_login/src/commons/platform_channels/paymaya_dev_method_channel.dart';
// import 'package:paymaya_dev_login/src/commons/preferences/preferences.dart';
import 'package:paymaya_dev_login/src/data/dev_login_repository.dart';
import 'package:paymaya_dev_login/src/data/model/dev_login_identity_model.dart';
import 'package:paymaya_dev_login/src/data/model/dev_login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

part 'dev_login_state.dart';
part 'dev_login_cubit.freezed.dart';

class DevLoginCubit extends Cubit<DevLoginState> {
  final DevLoginRepository _repository;
  // late final IPreferences preferences;
  // late PaymayaDevMethodChannel _methodChannel;
  late String _min;
  late String _password;
  late String _accessToken;

  late ILocalStorageService _storage;

  DevLoginCubit(
    this._repository,
    // this._storage
  ) : super(const DevLoginState.loading());

  Future<void> init(
    String initialMin,
    String initialPassword,
    String initialAccessToken,
    String packageName,
  ) async {
    emit(const DevLoginState.loading());
    // preferences = Preferences(await SharedPreferences.getInstance());
    // final storedMin = await preferences.getMin();
    final preferences = await SharedPreferences.getInstance();
   _storage = LocalStorageService(preferences);
    _min = initialMin;
    _password = initialPassword;
    onAccessTokenChanged(initialAccessToken);
    // _methodChannel = PaymayaDevMethodChannel(packageName);
    emit(DevLoginState.ready(_min));
  }

  Future<void> onLoginPressed() async {
    emit(const DevLoginState.loading());
    // await preferences.setMin(_min);
    // _methodChannel.setAccessToken(
        // arguments: <String, String>{DevConstants.accessTokenKey: _accessToken});
    final model = DevLoginModel(
      password: _password,
      identity: DevLoginIdentityModel(type: 'msisdn', value: _min),
      deviceToken: '0686d7c6-dd84-4c13-bd9f-993d91a84268',
      source: 'web',
    );
    final result = await _repository.getSessionToken(model);

    result.when(
      success: (result) async {
        emit(DevLoginState.proceed(result));
        await _storage.setString(StorageKey.token, result);
        await _storage.setString(StorageKey.refreshRoken, _accessToken);
        // _methodChannel.onLogin(arguments: <String, String>{
        //   DevConstants.sessionTokenKey: result,
        //   DevConstants.accessTokenKey: _accessToken
        // });
        // await _methodChannel.popFlutterInstance();
      },
      failure: (error) => emit(DevLoginState.error(error)),
    );
  }

  void onMinChanged(String min) => _min = min;
  void onPasswordChanged(String password) => _password = password;
  Future<void> onAccessTokenChanged(String accessToken) async {
    _accessToken = accessToken;
    await _storage.setString(StorageKey.refreshRoken, _accessToken);
    // SessionManager().setAccessToken(_accessToken);
  }
}
