import 'package:sembast/sembast.dart';
import 'package:synchronized/synchronized.dart';

abstract class ADao<T> {
  String get storeName;

  final DatabaseClient _dbClient;

  final _lock = Lock();

  ADao(this._dbClient);

  String primaryKeyOf(T entity);

  T fromJson(Map<String, Object?> json);

  Map<String, Object?> toJson(T data);

  StoreRef<String, Map<String, Object?>>? _cachedStore;

  StoreRef<String, Map<String, Object?>> get _store =>
      _cachedStore ??= stringMapStoreFactory.store(storeName);

  RecordRef<String, Map<String, Object?>> _recordRef(T value) =>
      _store.record(primaryKeyOf(value));

  Future<void> add(T value) => _lock.synchronized(
        () async {
          try {
            final json = toJson(value);
            await _recordRef(value).add(_dbClient, json);
          } on Object catch (e) {
            print(e);
            rethrow;
          }
        },
      );

  Future<void> put(T value) => _lock.synchronized(
        () async {
          final json = toJson(value);
          await _recordRef(value).put(_dbClient, json);
        },
      );

  Future<T?> getFirst() => _lock.synchronized(
        () async {
          final snapshot = await _store.findFirst(_dbClient);
          if (snapshot == null) {
            return null;
          } else {
            return fromJson(snapshot.value);
          }
        },
      );

  Future<T?> getByKey({required String key}) => _lock.synchronized(
        () async {
          final snapshot = await _store.record(key).get(_dbClient);
          if (snapshot == null) {
            return null;
          } else {
            return fromJson(snapshot);
          }
        },
      );

  Future<void> drop() => _lock.synchronized(
        () => _store.drop(_dbClient),
      );
}
