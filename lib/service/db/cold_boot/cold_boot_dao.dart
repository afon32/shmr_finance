import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import 'cold_boot_dto.dart';

class ColdBootDao extends ADao<ColdBootDto> {
  ColdBootDao(super.dbClient);

  @override
  ColdBootDto fromJson(Map<String, Object?> json) => ColdBootDto.fromJson(json);

  @override
  String primaryKeyOf(ColdBootDto entity) => entity.userId.toString();

  @override
  String get storeName => 'shmr_cold_boot_store';

  @override
  Map<String, Object?> toJson(ColdBootDto data) => data.toJson();

  Future<ColdBootDto> _get({required int userId}) async =>
      (await getByKey(key: userId.toString())) ?? ColdBootDto(userId: userId);

  Future<void> setColdBoot(bool isCold, int userId) async {
    final currentAppData = await _get(userId: userId);
    final newAppData = currentAppData.copyWith(isColdBoot: isCold);
    await put(newAppData);
  }
}
