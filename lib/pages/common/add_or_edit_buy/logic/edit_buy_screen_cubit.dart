import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shmr_finance/model/ui_items/account_item.dart';
import 'package:shmr_finance/model/ui_items/category_item.dart';

part 'edit_buy_screen_cubit_state.dart';
part 'edit_buy_screen_cubit.freezed.dart';

class EditBuyScreenCubit extends Cubit<EditBuyScreenCubitState> {
  late final EditBuyScreenCubitState initialState;

  EditBuyScreenCubit({EditBuyScreenCubitState? screenState})
      : super(screenState ?? EditBuyScreenCubitState.empty()) {
    initialState = state;
  }

  void updateScoreItem(int id, String name) {
    final newState = state.copyWith(scoreItem: AccountItem(id: id, name: name));
    emit(newState);
  }

  void updateCategoryItem(int id, String name) {
    final newState =
        state.copyWith(categoryItem: CategoryItem(id: id, name: name));
    emit(newState);
  }

  void updateAmount(double amount) {
    final newState = state.copyWith(amount: amount);
    emit(newState);
  }

  void updateDate(DateTime date) {
    final newState = state.copyWith(date: date.copyWith(hour: 0, minute: 0));
    emit(newState);
  }

  void updateTime(int hour, int minute) {
    final newState =
        state.copyWith(date: state.date.copyWith(hour: hour, minute: minute));
    emit(newState);
  }

  bool get isValid =>
      state != initialState &&
      state.scoreItem != null &&
      state.categoryItem != null &&
      state.amount != null;
}
