import 'package:rxdart/rxdart.dart';
import 'package:sembast/sembast_io.dart';
import 'package:shmr_finance/core/local_holders/cold_boot_holder.dart';
import 'package:shmr_finance/service/db/cold_boot/cold_boot_dao.dart';
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

  ShmrDatabase(
    this._stringsProvider,
    this._themeProvider,
    this._coldBootStateHolder,
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

  @override
  Future<void> onReady() async {
    try {
      await _restoreLocale(userId: userId);
      await _restoreTheme(userId: userId);

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
      );
  }
}
