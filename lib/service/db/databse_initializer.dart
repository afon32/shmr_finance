import 'package:yx_scope/yx_scope.dart';

import 'database.dart';

/// Класс, который наследуется от AsyncLifecycle для асинхронной инициализации БД
class DbInitializer implements AsyncLifecycle {
  final ShmrDatabase _db;

  DbInitializer(
    this._db,
  );

  @override
  Future<void> init() async {
    try {
      await _db.open();
    } on Object catch (error) {
      print(error);
    }
  }

  @override
  Future<void> dispose() async {
    try {
      _db.close();
    } on Object catch (error) {
      print(error);
    }
  }
}