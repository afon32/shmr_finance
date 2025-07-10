import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import '../dto/responses/account_dto/account_dto.dart';

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
      data.map((e) async => await add(e));
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBAccount?> getById({required int accountId}) async =>
      await getByKey(key: accountId.toString());
}
