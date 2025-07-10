import 'package:shmr_finance/data/local/dto/requests/transaction_request/transaction_request.dart';
import 'package:shmr_finance/service/db/abstract/a_dao.dart';

class TransactionDao extends ADao<DBTransaction> {
  TransactionDao(super.dbClient);

  @override
  DBTransaction fromJson(Map<String, Object?> json) =>
      DBTransaction.fromJson(json);

  @override
  String primaryKeyOf(entity) => entity.id.toString();

  @override
  String get storeName => 'shmr_transaction_store';

  @override
  Map<String, Object?> toJson(DBTransaction data) => data.toJson();

  Future<List<DBTransaction>> getAllAccounts() async => await getAll();

  Future<List<DBTransaction?>> getByPeriod(
      {required DateTime start, required DateTime end}) async {
    final allData = await getAll();
    final data = allData.map((e) {
      if (DateTime.parse(e.transactionDate).isAfter(start) &&
          DateTime.parse(e.transactionDate).isBefore(end)) {
        return e;
      }
    }).toList();

    return data;
  }

  Future<bool> addTransactions(List<DBTransaction> data) async {
    try {
      data.map((e) async => await add(e));
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBTransaction?> getById({required int transactionId}) async =>
      await getByKey(key: transactionId.toString());
}
