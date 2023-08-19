import 'package:shared_preferences/shared_preferences.dart';

enum SharedPreferenceKey implements Comparable<SharedPreferenceKey> {
  isOnboarded("isOnboarded");

  const SharedPreferenceKey(this._keyName);

  final String _keyName;

  static int compare(SharedPreferenceKey a, SharedPreferenceKey b) => a._keyName.compareTo(b._keyName);

  @override
  int compareTo(SharedPreferenceKey other) => _keyName.compareTo(other._keyName);
}

class CadetBankSharedPreference {
  CadetBankSharedPreference._();
  
  static Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  static Future<void> setInt(SharedPreferenceKey key, int value) async {
    final prefs = await _prefs;
    await prefs.setInt(key._keyName, value);
  }

  static Future<void> setBool(SharedPreferenceKey key, bool value) async {
    final prefs = await _prefs;
    await prefs.setBool(key._keyName, value);

  }

  static Future<int?> getInt(SharedPreferenceKey key) async {
    final prefs = await _prefs;
    return prefs.getInt(key._keyName);

  } 

  static Future<bool?> getBool(SharedPreferenceKey key) async {
    final prefs = await _prefs;
    return prefs.getBool(key._keyName);
  } 
}