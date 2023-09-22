import 'package:shared_preferences/shared_preferences.dart';

enum StorageKey implements Comparable<StorageKey> {
  isOnboarded("isOnboarded"),
  token("token"),
  refreshRoken("accessToken");

  const StorageKey(this._keyName);

  final String _keyName;

  static int compare(StorageKey a, StorageKey b) => a._keyName.compareTo(b._keyName);

  @override
  int compareTo(StorageKey other) => _keyName.compareTo(other._keyName);
}

class Storage {
  Storage._();
  
  static Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  static Future<void> setInt(StorageKey key, int value) async {
    final prefs = await _prefs;
    await prefs.setInt(key._keyName, value);
  }

  static Future<void> setBool(StorageKey key, bool value) async {
    final prefs = await _prefs;
    await prefs.setBool(key._keyName, value);
  }

  static Future<void> setString(StorageKey key, String value) async {
    final prefs = await _prefs;
    await prefs.setString(key._keyName, value);
  }

  static Future<int?> getInt(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getInt(key._keyName);
  } 

  static Future<bool?> getBool(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getBool(key._keyName);
  }

  static Future<String?> getString(StorageKey key) async {
    final prefs = await _prefs;
    return prefs.getString(key._keyName);
  }

  static Future<bool> remove(StorageKey key) async {
    final prefs = await _prefs;
    return await prefs.remove(key._keyName);
  }
}