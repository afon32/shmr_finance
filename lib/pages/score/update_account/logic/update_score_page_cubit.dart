import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/features/account/data/dto/export.dart';
import 'package:shmr_finance/features/account/domain/use_cases/get_account_by_id_use_case.dart';
import 'package:shmr_finance/features/account/domain/use_cases/update_account_use_case.dart';

import 'update_score_page_view_model.dart';

part 'update_score_page_state.dart';
part 'update_score_page_cubit.freezed.dart';

class UpdateScorePageCubit extends Cubit<UpdateScorePageState> {
  final int id;
  final GetAccountByIdUseCase getAccountUseCase;
  final UpdateAccountUseCase updateAccountUseCase;

  UpdateScorePageCubit(
      {required this.getAccountUseCase,
      required this.updateAccountUseCase,
      required this.id})
      : super(UpdateScorePageState.loading());

  void getAccountById() async {
    emit(UpdateScorePageState.loading());
    try {
      final response = await getAccountUseCase.execute(id);
      final viewModel = UpdateScorePageViewModel.buildWith(
          response.name, response.balance, response.currency);

      emit(UpdateScorePageState.content(viewModel));
    } on Exception catch (e) {
      emit(UpdateScorePageState.error(e));
    }
  }

  void updateAccount(String newName) async {
    if (state is Content) {
      final currentAccount = (state as Content).content;
      if (currentAccount.name != newName) {
        emit(UpdateScorePageState.loading());
        try {
          final response = await updateAccountUseCase.execute(
              UpdateAccountUseCaseRequest(
                  id: id,
                  name: newName,
                  balance: currentAccount.amount,
                  currency: currentAccount.currency));
          final viewModel = UpdateScorePageViewModel.buildWith(
              response.name, response.balance, response.currency);
          emit(UpdateScorePageState.content(viewModel));
        } on Exception catch (e) {
          emit(UpdateScorePageState.error(e));
        }
      }
    }
  }
}
