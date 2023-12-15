
import 'package:local_storage/local_storage.dart';

abstract class ILocalStorageService {
  Future<void> setInt(StorageKey key, int value);

  Future<void> setBool(StorageKey key, bool value);

  Future<void> setString(StorageKey key, String value);

  int? getInt(StorageKey key);

  bool? getBool(StorageKey key);

  String? getString(StorageKey key);

  Future<bool> remove(StorageKey key);
}