import 'package:shmr_finance/data/dto/responses/account_response/stat_item.dart';

import 'dto/requests/export.dart';
import 'dto/responses/export.dart';

/// Моки ответов с датасурсов
class MockedData {
  // Account
  static List<ApiAccount> get getAllAccountsMock => [
        ApiAccount(
            id: 1,
            userId: 1,
            name: 'name',
            balance: '100.0',
            currency: 'EUR',
            createdAt: '2025-06-09 19:23:27.180',
            updatedAt: '2025-06-09 19:23:27.180')
      ];

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
                    id: 1, name: 'name2', balance: '2020.0', currency: 'EUR'),
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
              id: 1, name: 'Account 1', balance: '500.0', currency: 'EUR'),
          category: ApiCategory(
              id: 1, name: 'Groceries', emoji: '🛒', isIncome: false),
          amount: '50.0',
          transactionDate: '2025-06-09 10:00:00.000',
          comment: 'Weekly shopping',
          createdAt: '2025-06-09 10:00:00.000',
          updatedAt: '2025-06-09 10:00:00.000',
        ),
        ApiTransactionResponse(
          id: 2,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1200.0', currency: 'EUR'),
          category:
              ApiCategory(id: 2, name: 'Salary', emoji: '💼', isIncome: true),
          amount: '1200.0',
          transactionDate: '2025-06-10 09:00:00.000',
          comment: 'Monthly salary',
          createdAt: '2025-06-10 09:00:00.000',
          updatedAt: '2025-06-10 09:00:00.000',
        ),
        ApiTransactionResponse(
          id: 3,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '450.0', currency: 'EUR'),
          category: ApiCategory(
              id: 3, name: 'Transport', emoji: '🚗', isIncome: false),
          amount: '20.0',
          transactionDate: '2025-06-11 08:30:00.000',
          comment: 'Bus ticket',
          createdAt: '2025-06-11 08:30:00.000',
          updatedAt: '2025-06-11 08:30:00.000',
        ),
        ApiTransactionResponse(
          id: 4,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '300.0', currency: 'EUR'),
          category: ApiCategory(
              id: 4, name: 'Entertainment', emoji: '🎬', isIncome: false),
          amount: '30.0',
          transactionDate: '2025-06-11 20:00:00.000',
          comment: 'Cinema ticket',
          createdAt: '2025-06-11 20:00:00.000',
          updatedAt: '2025-06-11 20:00:00.000',
        ),
        ApiTransactionResponse(
          id: 5,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1180.0', currency: 'EUR'),
          category:
              ApiCategory(id: 5, name: 'Gift', emoji: '🎁', isIncome: true),
          amount: '100.0',
          transactionDate: '2025-06-12 14:00:00.000',
          comment: 'Birthday gift',
          createdAt: '2025-06-12 14:00:00.000',
          updatedAt: '2025-06-12 14:00:00.000',
        ),
        ApiTransactionResponse(
          id: 6,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '430.0', currency: 'EUR'),
          category:
              ApiCategory(id: 6, name: 'Dining', emoji: '🍽️', isIncome: false),
          amount: '25.0',
          transactionDate: '2025-06-13 19:00:00.000',
          comment: 'Dinner at restaurant',
          createdAt: '2025-06-13 19:00:00.000',
          updatedAt: '2025-06-13 19:00:00.000',
        ),
        ApiTransactionResponse(
          id: 7,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '270.0', currency: 'EUR'),
          category: ApiCategory(
              id: 7, name: 'Utilities', emoji: '💡', isIncome: false),
          amount: '60.0',
          transactionDate: '2025-06-14 09:00:00.000',
          comment: 'Electricity bill',
          createdAt: '2025-06-14 09:00:00.000',
          updatedAt: '2025-06-14 09:00:00.000',
        ),
        ApiTransactionResponse(
          id: 8,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1280.0', currency: 'EUR'),
          category: ApiCategory(
              id: 8, name: 'Investment', emoji: '📈', isIncome: true),
          amount: '300.0',
          transactionDate: '2025-06-14 15:00:00.000',
          comment: 'Stock dividends',
          createdAt: '2025-06-14 15:00:00.000',
          updatedAt: '2025-06-14 15:00:00.000',
        ),
        ApiTransactionResponse(
          id: 9,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '405.0', currency: 'EUR'),
          category:
              ApiCategory(id: 9, name: 'Health', emoji: '💊', isIncome: false),
          amount: '15.0',
          transactionDate: '2025-06-15 11:00:00.000',
          comment: 'Pharmacy',
          createdAt: '2025-06-15 11:00:00.000',
          updatedAt: '2025-06-15 11:00:00.000',
        ),
        ApiTransactionResponse(
          id: 10,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '250.0', currency: 'EUR'),
          category:
              ApiCategory(id: 10, name: 'Travel', emoji: '✈️', isIncome: false),
          amount: '150.0',
          transactionDate: '2025-06-15 18:00:00.000',
          comment: 'Flight ticket',
          createdAt: '2025-06-15 18:00:00.000',
          updatedAt: '2025-06-15 18:00:00.000',
        ),
        ApiTransactionResponse(
          id: 11,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '390.0', currency: 'EUR'),
          category: ApiCategory(
              id: 11, name: 'Education', emoji: '📚', isIncome: false),
          amount: '100.0',
          transactionDate: '2025-06-16 09:30:00.000',
          comment: 'Online course',
          createdAt: '2025-06-16 09:30:00.000',
          updatedAt: '2025-06-16 09:30:00.000',
        ),
        ApiTransactionResponse(
          id: 12,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1580.0', currency: 'EUR'),
          category:
              ApiCategory(id: 12, name: 'Bonus', emoji: '🎉', isIncome: true),
          amount: '200.0',
          transactionDate: '2025-06-16 12:00:00.000',
          comment: 'Performance bonus',
          createdAt: '2025-06-16 12:00:00.000',
          updatedAt: '2025-06-16 12:00:00.000',
        ),
        ApiTransactionResponse(
          id: 13,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '230.0', currency: 'EUR'),
          category: ApiCategory(
              id: 13, name: 'Shopping', emoji: '🛍️', isIncome: false),
          amount: '80.0',
          transactionDate: '2025-06-17 16:00:00.000',
          comment: 'Clothes',
          createdAt: '2025-06-17 16:00:00.000',
          updatedAt: '2025-06-17 16:00:00.000',
        ),
        ApiTransactionResponse(
          id: 14,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '310.0', currency: 'EUR'),
          category:
              ApiCategory(id: 14, name: 'Gift', emoji: '🎁', isIncome: true),
          amount: '50.0',
          transactionDate: '2025-06-18 10:00:00.000',
          comment: 'Gift from friend',
          createdAt: '2025-06-18 10:00:00.000',
          updatedAt: '2025-06-18 10:00:00.000',
        ),
        ApiTransactionResponse(
          id: 15,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1530.0', currency: 'EUR'),
          category: ApiCategory(
              id: 15, name: 'Freelance', emoji: '🖥️', isIncome: true),
          amount: '400.0',
          transactionDate: '2025-06-18 14:00:00.000',
          comment: 'Project payment',
          createdAt: '2025-06-18 14:00:00.000',
          updatedAt: '2025-06-18 14:00:00.000',
        ),
        ApiTransactionResponse(
          id: 16,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '220.0', currency: 'EUR'),
          category: ApiCategory(
              id: 16, name: 'Subscription', emoji: '📺', isIncome: false),
          amount: '15.0',
          transactionDate: '2025-06-19 08:00:00.000',
          comment: 'Streaming service',
          createdAt: '2025-06-19 08:00:00.000',
          updatedAt: '2025-06-19 08:00:00.000',
        ),
        ApiTransactionResponse(
          id: 17,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '295.0', currency: 'EUR'),
          category: ApiCategory(
              id: 17, name: 'Charity', emoji: '❤️', isIncome: false),
          amount: '30.0',
          transactionDate: '2025-06-19 12:00:00.000',
          comment: 'Donation',
          createdAt: '2025-06-19 12:00:00.000',
          updatedAt: '2025-06-19 12:00:00.000',
        ),
        ApiTransactionResponse(
          id: 18,
          account: ApiAccountBrief(
              id: 2, name: 'Account 2', balance: '1930.0', currency: 'EUR'),
          category: ApiCategory(
              id: 18, name: 'Interest', emoji: '💰', isIncome: true),
          amount: '50.0',
          transactionDate: '2025-06-20 09:00:00.000',
          comment: 'Bank interest',
          createdAt: '2025-06-20 09:00:00.000',
          updatedAt: '2025-06-20 09:00:00.000',
        ),
        ApiTransactionResponse(
          id: 19,
          account: ApiAccountBrief(
              id: 3, name: 'Account 3', balance: '205.0', currency: 'EUR'),
          category:
              ApiCategory(id: 19, name: 'Repair', emoji: '🔧', isIncome: false),
          amount: '70.0',
          transactionDate: '2025-06-20 15:00:00.000',
          comment: 'Car repair',
          createdAt: '2025-06-20 15:00:00.000',
          updatedAt: '2025-06-20 15:00:00.000',
        ),
        ApiTransactionResponse(
          id: 20,
          account: ApiAccountBrief(
              id: 1, name: 'Account 1', balance: '265.0', currency: 'EUR'),
          category: ApiCategory(
              id: 20, name: 'Miscellaneous', emoji: '❓', isIncome: false),
          amount: '10.0',
          transactionDate: '2025-06-21 11:00:00.000',
          comment: 'Random expense',
          createdAt: '2025-06-21 11:00:00.000',
          updatedAt: '2025-06-21 11:00:00.000',
        ),
      ];
}
