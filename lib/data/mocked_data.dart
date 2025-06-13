import 'package:shmr_finance/data/dto/responses/account_response/stat_item.dart';

import 'dto/requests/export.dart';
import 'dto/responses/export.dart';

/// Моки ответов с датасурсов
class MockedData {
  // Account
  static ApiAccount get getAllAccountsMock => ApiAccount(
      id: 1,
      userId: 1,
      name: 'name',
      balance: '100.0',
      currency: 'EUR',
      createdAt: '2025-06-09 19:23:27.180',
      updatedAt: '2025-06-09 19:23:27.180');

  static bool get createNewAccountMock => true;

  static ApiAccountResponse get getAccountByIdMock => ApiAccountResponse(
      id: 1,
      name: 'name',
      balance: '100.0',
      currency: 'EUR',
      incomeStats: [
        ApiStatItem(
            categoryId: 1, categoryName: '1', emoji: ')', amount: '500.0')
      ],
      expenseStats: [
        ApiStatItem(
            categoryId: 2, categoryName: '2', emoji: '(', amount: '300.0')
      ],
      createdAt: '2025-06-09 19:23:27.180',
      updatedAt: '2025-06-09 19:23:27.180');

  static ApiAccount get updateAccountMock => ApiAccount(
      id: 1,
      userId: 1,
      name: 'name',
      balance: '100.0',
      currency: 'EUR',
      createdAt: '2025-06-09 19:23:27.180',
      updatedAt: '2025-06-09 19:23:27.180');

  static ApiAccountHistoryResponse get getAccountHistoryMock =>
      ApiAccountHistoryResponse(
          accountId: 1,
          accountName: 'accountName',
          currency: 'EUR',
          currentBalance: '400.0',
          history: [
            ApiAccountHistory(
                id: 1,
                accountId: 1,
                changeType: 'CREATION',
                previousState: ApiAccountState(
                    id: 1, name: 'name', balance: '200.0', currency: 'EUR'),
                newState: ApiAccountState(
                    id: 1, name: 'name2', balance: '2020.0', currency: 'RUB'),
                changeTimestamp: '2025-06-09 19:23:27.180',
                createdAt: '2025-06-09 19:23:27.180')
          ]);

  // Categories

  static List<ApiCategory> get getAllCategoriesMock =>
      [ApiCategory(id: 1, name: 'name', emoji: ')', isIncome: true)];
  static List<ApiCategory> get getCategoriesByTypeMock =>
      [ApiCategory(id: 3, name: 'nasasdme', emoji: 's)', isIncome: true)];

  // Transactions

  static ApiTransaction get createNewTransactionMock => ApiTransaction(
      id: 1,
      accountId: 1,
      categoryId: 1,
      amount: '5000.0',
      transactionDate: '2025-06-09 19:23:27.180',
      comment: 'comment',
      createdAt: '2025-06-09 19:23:27.180',
      updatedAt: '2025-06-09 19:23:27.180');

  static ApiTransactionResponse get getTransactionByIdMock =>
      ApiTransactionResponse(
          id: 1,
          account: ApiAccountBrief(
              id: 1, name: 'name', balance: '500.0', currency: 'EUR'),
          category:
              ApiCategory(id: 1, name: 'name', emoji: ')', isIncome: false),
          amount: '3000.0',
          transactionDate: '2025-06-09 19:23:27.180',
          comment: 'comment',
          createdAt: '2025-06-09 19:23:27.180',
          updatedAt: '2025-06-09 19:23:27.180');

  static ApiTransactionResponse get updateTransactionMock =>
      ApiTransactionResponse(
          id: 1,
          account: ApiAccountBrief(
              id: 1, name: 'name', balance: '500.0', currency: 'EUR'),
          category:
              ApiCategory(id: 1, name: 'name', emoji: ')', isIncome: false),
          amount: '3000.0',
          transactionDate: '2025-06-09 19:23:27.180',
          comment: 'comment',
          createdAt: '2025-06-09 19:23:27.180',
          updatedAt: '2025-06-09 19:23:27.180');

  static bool get deleteTransactionMock => true;

  static List<ApiTransactionResponse> get getTransactionByPeriodMock => [
        ApiTransactionResponse(
            id: 1,
            account: ApiAccountBrief(
              id: 1, name: 'name', balance: '500.0', currency: 'EUR'),
            category: ApiCategory(id: 1, name: 'name', emoji: ')', isIncome: false),
            amount: '500.0',
            transactionDate: '2025-06-09 19:23:27.180',
            comment: 'comment',
            createdAt: '2025-06-09 19:23:27.180',
            updatedAt: '2025-06-09 19:23:27.180')
      ];
}
