import '../../data/dto/export.dart';
import '../entities/account.dart';
import '../entities/account_history.dart';

abstract class AccountRepository {
  Future<List<Account>> getAllAccounts();

  Future<Account> getAccountById(int id);

  Future<Account> createAccount(CreateAccountUseCaseRequest request);

  Future<Account> updateAccount(UpdateAccountUseCaseRequest request);

  Future<AccountHistory> getAccountHistory(int id);
}
