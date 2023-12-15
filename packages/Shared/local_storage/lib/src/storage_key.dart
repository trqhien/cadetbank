enum StorageKey implements Comparable<StorageKey> {
  isOnboarded("isOnboarded"),
  token("token"),
  refreshRoken("accessToken");

  const StorageKey(this.keyName);

  final String keyName;

  static int compare(StorageKey a, StorageKey b) => a.keyName.compareTo(b.keyName);

  @override
  int compareTo(StorageKey other) => keyName.compareTo(other.keyName);
}