
import 'package:shmr_finance/service/db/abstract/a_dao.dart';

import '../dto/models/category/db_category.dart';


class CategoryDao extends ADao<DBCategory> {
  CategoryDao(super.dbClient);

  @override
  DBCategory fromJson(Map<String, Object?> json) => DBCategory.fromJson(json);

  @override
  String primaryKeyOf(entity) => entity.id.toString();

  @override
  String get storeName => 'shmr_category_store';

  @override
  Map<String, Object?> toJson(DBCategory data) => data.toJson();

  Future<List<DBCategory>> getAllCategories() async => await getAll();

  Future<bool> addCategories(List<DBCategory> data) async {
    try {
      await Future.wait(data.map((e) => add(e)));
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<DBCategory?> getById({required int categoryId}) async =>
      await getByKey(key: categoryId.toString());
}
