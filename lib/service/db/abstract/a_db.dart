import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast_io.dart';

abstract class ADb {
  late final Database _db;
  late final CompositeSubscription globalSubscriptions;
  CompositeSubscription? deviceSubscriptions;
  bool isReady = false;

  DatabaseClient get dbClient => _db;

  String get name;

  int get version;

  Future<void> onReady();

  void onVersionChanged(Database db, int oldVersion, int newVersion);

  Future<void> open() async {
    final appDocDirectory = await getApplicationDocumentsDirectory();
    final path = '${appDocDirectory.path}/$name';
    _db = await databaseFactoryIo.openDatabase(
      path,
      version: version,
      onVersionChanged: onVersionChanged,
    );
    isReady = true;
    await onReady();
  }

  void close() {
    isReady = false;
    globalSubscriptions.cancel();
    deviceSubscriptions?.cancel();
    deviceSubscriptions = null;
    _db.close();
  }
}
