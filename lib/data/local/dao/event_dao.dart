import 'package:shmr_finance/data/local/dto/models/event/db_event.dart';
import 'package:shmr_finance/service/db/abstract/a_dao.dart';


class EventDao extends ADao<DBEvent> {
  EventDao(super.dbClient);

  @override
  DBEvent fromJson(Map<String, Object?> json) => DBEvent.fromJson(json);

  @override
  String primaryKeyOf(entity) => entity.request.toString();

  @override
  String get storeName => 'shmr_event_store';

  @override
  Map<String, Object?> toJson(DBEvent data) => data.toJson();

  Future<List<DBEvent>> getAllAccounts() async => await getAll();

  Future<bool> addEvent(DBEvent data) async {
    try {
      add(data);
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBEvent?> getById({required int accountId}) async =>
      await getByKey(key: accountId.toString());

  Future<bool> updateAccount(DBEvent account) async {
    try {
      await put(account);
      return true;
    } catch (_) {
      return false;
    }
  }
}
