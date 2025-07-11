import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import '../dto/models/transaction/db_transaction.dart';

class TransactionDao extends ADao<DBTransaction> {
  TransactionDao(super.dbClient);

  @override
  DBTransaction fromJson(Map<String, Object?> json) =>
      DBTransaction.fromJson(json);

  @override
  String primaryKeyOf(entity) => entity.id;

  @override
  String get storeName => 'shmr_transaction_store';

  @override
  Map<String, Object?> toJson(DBTransaction data) => data.toJson();

  Future<List<DBTransaction>> getAllTransactions() async => await getAll();

  Future<List<DBTransaction>> getByPeriod(
      {required DateTime start, required DateTime end}) async {
    final allData = await getAll();
    final List<DBTransaction> data = [];
    for (DBTransaction e in allData) {
      if (DateTime.parse(e.transactionDate).isAfter(start) &&
          DateTime.parse(e.transactionDate).isBefore(end)) {
        data.add(e);
      }
    }

    return data;
  }

  Future<bool> addTransactions(List<DBTransaction> data) async {
    try {
      await Future.wait(data.map((e) => add(e)));
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBTransaction?> getById({required int transactionId}) async =>
      await getByKey(key: transactionId.toString());

  Future<bool> updateTransaction(DBTransaction transaction) async {
    try {
      await put(transaction);
      return true;
    } catch (_) {
      return false;
    }
  }
}
