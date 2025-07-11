import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/core/base/use_case_abstract/base_use_case.dart';
import 'package:shmr_finance/features/account/data/dto/update_account_use_case_request.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_all_accounts_use_case.dart';
import 'package:shmr_finance/features/account/domain/use_cases/update_account_use_case.dart';
import 'package:shmr_finance/model/common_enums/currency_enum.dart';
import 'package:shmr_finance/pages/score/logic/score_page_view_model.dart';

part 'score_page_state.dart';
part 'score_page_cubit.freezed.dart';

class ScorePageCubit extends Cubit<ScorePageState> {
  final GetAllAccountsUseCase useCase;
  final UpdateAccountUseCase updateAccountUseCase;

  ScorePageCubit({
    required this.useCase,
    required this.updateAccountUseCase,
  }) : super(ScorePageState.loading());

  // я так и не понял один счёт или много
  void getAccount() async {
    emit(ScorePageState.loading());
    try {
      final response = await useCase.execute(EmptyUseCaseRequest());
      final viewModel =
          await compute(ScorePageViewModel.fromAccountsList, response);

      emit(ScorePageState.content(viewModel));
    } on Exception catch (e) {
      emit(ScorePageState.error(e));
    }
  }

  void setCurrency(Currency newCurrency) async {
    if (state is Content) {
      final acc = (state as Content).content.items.first;
      final request = UpdateAccountUseCaseRequest(
        id: acc.id,
        name: acc.name,
        balance: acc.amount.toDouble(),
        currency: newCurrency,
      );
      await updateAccountUseCase.execute(request);
      getAccount();
    }
  }
}
