import 'package:shared_preferences/shared_preferences.dart';
import 'package:local_storage/src/storage_key.dart';

class LocalStorage {
  LocalStorage._();
  
  static Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  static Future<void> setInt(StorageKey key, int value) async {
    final prefs = await _prefs;
    await prefs.setInt(key.keyName, value);
  }

  static Future<void> setBool(StorageKey key, bool value) async {
    final prefs = await _prefs;
    await prefs.setBool(key.keyName, value);
  }

  static Future<void> setString(StorageKey key, String value) async {
    final prefs = await _prefs;
    await prefs.setString(key.keyName, value);
  }

  static Future<int?> getInt(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getInt(key.keyName);
  } 

  static Future<bool?> getBool(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getBool(key.keyName);
  }

  static Future<String?> getString(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getString(key.keyName);
  }

  static Future<bool> remove(StorageKey key) async {
    final prefs = await _prefs;
    return await prefs.remove(key.keyName);
  }
}