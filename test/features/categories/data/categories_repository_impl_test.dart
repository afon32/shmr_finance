import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shmr_finance/features/categories/data/categories_repository_impl.dart';
import 'package:shmr_finance/service/api/api_util.dart';

import '../../../core/connection_listener/fake_connection_listener_cubit.dart';
import '../../../core/local_holders/cold_boot_holder_test.dart';
import '../../../core/local_holders/local_transaction_id_holder_test.dart';
import '../../../data/local/local_repository_impl_test.dart';
import '../../../data/local/responses/all_accounts_response_mock.dart';
import '../../../data/network/network_repository_impl_test.dart';
import '../../../data/network/responses/all_accounts_response_mock.dart';

void main() {
  group(
    'Categories repository tests',
    () {
      late ApiUtil apiUtil;
      late MockLocalRepositoryImpl mockLocalRepositoryImpl;
      late MockNetworkRepositoryImpl mockNetworkRepositoryImpl;
      late FakeConnectionStatusStateHolder connectionStatusStateHolderTest;
      late CategoriesRepositoryImpl repository;
      setUpAll(() {
        mockLocalRepositoryImpl = MockLocalRepositoryImpl();
        mockNetworkRepositoryImpl = MockNetworkRepositoryImpl();
        connectionStatusStateHolderTest = FakeConnectionStatusStateHolder();
        apiUtil = ApiUtil(
          connectionStatusStateHolder: connectionStatusStateHolderTest,
          networkService: mockNetworkRepositoryImpl,
          localService: mockLocalRepositoryImpl,
          coldBootStateHolder: MockColdBootStateHolder(),
          localTransactionIdHolder: MockLocalTransactionIdHolder(),
        );
        repository = CategoriesRepositoryImpl(apiUtil: apiUtil);
      });

      /// Метод получения всех категорий из БД
      test(
        'Должен сходить в БД и вытащить оттуда две категории.',
        () async {
          // ARRANGE - готовим инстансы и задаём ответ на вызов метода

          connectionStatusStateHolderTest
              .disconnect(); // имитируем отключение от сети

          when(() => mockLocalRepositoryImpl.getAllCategories()).thenAnswer(
            (invocation) async => getAllCategoriesDBMock,
          );

          // ACT - вызываем метод из репозитория, в который инжектили ApiUtil с замоканными датасурсами

          final result = await repository.getAllCategories();

          // ASSERT -  Проверяем на соответствие с длиной тестового объекта

          expect(result, hasLength(2));
        },
      );

      /// Метод получения всех категорий с сервера
      test(
        'Должен сходить в сервер и вытащить оттуда 20 категорий.',
        () async {
          // ARRANGE - готовим инстансы и задаём ответ на вызов метода

          connectionStatusStateHolderTest
              .connect(); // имитируем подключение к сети

          when(() => mockNetworkRepositoryImpl.getAllCategories()).thenAnswer(
            (invocation) async => getAllCategoriesNetworkMock,
          );

          // ACT - вызываем метод из репозитория, в который инжектили ApiUtil с замоканными датасурсами

          final result = await repository.getAllCategories();

          // ASSERT -  Проверяем на соответствие с длиной тестового объекта

          expect(result, hasLength(20));
        },
      );

      /// Метод получения категорий по типу true с сервера
      test(
        'Должен сходить в сервер и вытащить оттуда только isIncome категории, правильно спарсить к доменной сущности.',
        () async {
          // ARRANGE - готовим инстансы и задаём ответ на вызов метода

          connectionStatusStateHolderTest
              .connect(); // имитируем подключение к сети

          when(() => mockNetworkRepositoryImpl.getCategoryByType(true))
              .thenAnswer(
            (invocation) async => getCategoriesByTrueTypeNetworkMock,
          );

          // ACT - вызываем метод из репозитория, в который инжектили ApiUtil с замоканными датасурсами

          final result = await repository.getCategoriesFromType(true);

          // ASSERT -  Проверяем на то, что все данные в ответе действительно isIncome

          final allTrue = result.every((e) => e.isIncome);

          expect(allTrue, isTrue);

          expect(
            result,
            equals(getCategoriesByTrueTypeNetworkToDomainMock),
          );
        },
      );

      /// Метод получения категорий по типу false с БД
      test(
        'Должен сходить в БД и вытащить оттуда только НЕ isIncome категории, правильно спарсить к доменной сущности.',
        () async {
          // ARRANGE - готовим инстансы и задаём ответ на вызов метода

          connectionStatusStateHolderTest
              .disconnect(); // имитируем отключение от сети

          when(() => mockLocalRepositoryImpl.getCategoryByType(false))
              .thenAnswer(
            (invocation) async => getCategoriesByFalseTrueDBMock,
          );

          // ACT - вызываем метод из репозитория, в который инжектили ApiUtil с замоканными датасурсами

          final result = await repository.getCategoriesFromType(false);

          // ASSERT -  Проверяем на то, что все данные в ответе действительно isIncome

          final allTrue = result.every((e) => !e.isIncome);

          expect(allTrue, isTrue);

          expect(
            result,
            equals(getCategoriesByFalseTrueDBToDomainMock),
          );
        },
      );
    },
  );
}
