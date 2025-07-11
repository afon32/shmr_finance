import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast_io.dart';
import 'package:shmr_finance/core/local_holders/cold_boot_holder.dart';
import 'package:shmr_finance/core/local_holders/local_transaction_id_holder.dart';
import 'package:shmr_finance/service/db/cold_boot/cold_boot_dao.dart';
import 'package:shmr_finance/service/db/local_transaction_id/local_transaction_id_dao.dart';
import 'package:shmr_finance/service/db/local_transaction_id/local_transaction_id_dto.dart';
import 'package:shmr_finance/utils/constants.dart';
import 'package:shmr_finance/utils/strings/strings_provider.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

import 'abstract/a_db.dart';
import 'customization/app_customization_dao.dart';

class ShmrDatabase extends ADb {
  @override
  String get name => 'shmr_storage.db';

  @override
  int get version => 1;

  final int userId = mockUserId;

  final StringsProvider _stringsProvider;
  final ThemeProvider _themeProvider;
  final ColdBootStateHolder _coldBootStateHolder;
  final LocalTransactionIdHolder _localTransactionIdHolder;

  ShmrDatabase(
    this._stringsProvider,
    this._themeProvider,
    this._coldBootStateHolder,
    this._localTransactionIdHolder,
  );

  /// аксесс обжект для кастомизации
  AppCustomizationDao? _appCustomizationDao;

  AppCustomizationDao get appCustomizationDao {
    if (!isReady) {
      throw Exception('DataBase is not ready');
    }
    return _appCustomizationDao ??= AppCustomizationDao(dbClient);
  }

  /// аксесс обжект для cold boot
  ColdBootDao? _coldBootDao;

  ColdBootDao get coldBootDao {
    if (!isReady) {
      throw Exception('DataBase is not ready');
    }
    return _coldBootDao ??= ColdBootDao(dbClient);
  }

  /// аксесс обжект для id транзакции
  LocalTransactionIdDao? _localTransactionIdDao;

  LocalTransactionIdDao get localTransactionIdDao {
    if (!isReady) {
      throw Exception('DataBase is not ready');
    }
    return _localTransactionIdDao ??= LocalTransactionIdDao(dbClient);
  }

  @override
  Future<void> onReady() async {
    try {
      await _restoreLocale(userId: userId);
      await _restoreTheme(userId: userId);
      await _restoreColdBootFlag(userId: userId);

      // всегда в конце
      _subscribeOnChanges();
    } on Object catch (e) {
      print(e);
    }
  }

  @override
  void onVersionChanged(DatabaseClient db, int oldVersion, int newVersion) {
    AppCustomizationDao(db).drop();
    // другие так же вставить
  }

  Future<void> _restoreLocale({required int userId}) async {
    final localeCode = await appCustomizationDao.getLocalCode(userId);
    _stringsProvider.localeCode != localeCode
        ? _stringsProvider.toggleLang()
        : print('locale the same');
  }

  Future<void> _restoreTheme({required int userId}) async {
    final isLightTheme = await appCustomizationDao.getTheme(userId);
    _themeProvider.isLight != isLightTheme
        ? _themeProvider.toggleTheme()
        : print('theme the same');
  }

  Future<void> _restoreColdBootFlag({required int userId}) async {
    final isColdBoot = await coldBootDao.getColdBootFlag(userId);
    !isColdBoot
        ? _coldBootStateHolder.setNot()
        : _coldBootStateHolder.setTrue();
  }

  Future<void> _restoreTransactionId({required int userId}) async {
    final id = await localTransactionIdDao.getId(userId);
    _localTransactionIdHolder.restore(id);
  }

  /// Подписка на изменение темы и языка
  void _subscribeOnChanges() {
    globalSubscriptions = CompositeSubscription()
      ..add(
        _themeProvider.stream.asyncMap((mode) {
          appCustomizationDao.setTheme(mode, userId);
        }).listen((_) {}),
      )
      ..add(
        _stringsProvider.stream
            .asyncMap(
              (strings) =>
                  appCustomizationDao.setLocale(strings.locale, userId),
            )
            .listen((_) {}),
      )
      ..add(
        _coldBootStateHolder.stream
            .asyncMap(
              (isCold) => coldBootDao.setColdBoot(isCold, userId),
            )
            .listen((_) {}),
      )
      ..add(
        _localTransactionIdHolder.stream
            .asyncMap(
              (id) => localTransactionIdDao.setId(id, userId),
            )
            .listen((_) {}),
      );
  }
}
