import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import '../dto/models/account/db_account.dart';

class AccountDao extends ADao<DBAccount> {
  AccountDao(super.dbClient);

  @override
  DBAccount fromJson(Map<String, Object?> json) => DBAccount.fromJson(json);

  @override
  String primaryKeyOf(entity) => entity.id.toString();

  @override
  String get storeName => 'shmr_account_store';

  @override
  Map<String, Object?> toJson(DBAccount data) => data.toJson();

  Future<List<DBAccount>> getAllAccounts() async => await getAll();

  Future<bool> addAccounts(List<DBAccount> data) async {
    try {
      await Future.wait(data.map((e) => add(e)));
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBAccount?> getById({required int accountId}) async =>
      await getByKey(key: accountId.toString());

  Future<bool> updateAccount(DBAccount account) async {
    try {
      await put(account);
      return true;
    } catch (_) {
      return false;
    }
  }
}
