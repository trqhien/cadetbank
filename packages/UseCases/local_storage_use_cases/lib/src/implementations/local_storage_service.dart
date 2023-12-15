
import 'package:injectable/injectable.dart';
import 'package:local_storage_use_cases/local_storage_use_cases.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ILocalStorageService)
class LocalStorageService implements ILocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  @override
  bool? getBool(StorageKey key) {
    return _prefs.getBool(key.keyName);
  }

  @override
  int? getInt(StorageKey key) {
    return _prefs.getInt(key.keyName);
  }

  @override
  String? getString(StorageKey key) {
    return _prefs.getString(key.keyName);
  }

  @override
  Future<bool> remove(StorageKey key) async {
    return _prefs.remove(key.keyName);
  }

  @override
  Future<void> setBool(StorageKey key, bool value) async {
    await _prefs.setBool(key.keyName, value);
  }

  @override
  Future<void> setInt(StorageKey key, int value) async {
    await _prefs.setInt(key.keyName, value);
  }

  @override
  Future<void> setString(StorageKey key, String value) async {
    await _prefs.setString(key.keyName, value);
  }
}