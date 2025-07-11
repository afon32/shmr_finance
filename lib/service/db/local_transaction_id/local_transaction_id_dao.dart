import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import 'local_transaction_id_dto.dart';

class LocalTransactionIdDao extends ADao<LocalTransactionIdDto> {
  LocalTransactionIdDao(super.dbClient);

  @override
  LocalTransactionIdDto fromJson(Map<String, Object?> json) => LocalTransactionIdDto.fromJson(json);

  @override
  String primaryKeyOf(LocalTransactionIdDto entity) => entity.userId.toString();

  @override
  String get storeName => 'shmr_cold_boot_store';

  @override
  Map<String, Object?> toJson(LocalTransactionIdDto data) => data.toJson();

  Future<LocalTransactionIdDto> _get({required int userId}) async =>
      (await getByKey(key: userId.toString())) ?? LocalTransactionIdDto(userId: userId);

  Future<void> setId(int id, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData = currentAppData.copyWith(transactionId: id);
    await put(newAppData);
  }

    Future<int> getId(int userId) async {
    final currentAppData = await _get(userId: userId);
    return currentAppData.transactionId;
  }
}
