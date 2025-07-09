part of 'edit_buy_screen_cubit.dart';

@freezed
class EditBuyScreenCubitState with _$EditBuyScreenCubitState {
  final int? id;
  final AccountItem? scoreItem;
  final CategoryItem? categoryItem;
  final double? amount;
  final DateTime date;
  final String? comment;

  EditBuyScreenCubitState(
      {required this.id,
      required this.scoreItem,
      required this.categoryItem,
      required this.amount,
      required this.date,
      required this.comment});

  factory EditBuyScreenCubitState.buildWith(
    int? id,
    AccountItem? scoreItem,
    CategoryItem? categoryItem,
    double? amount,
    DateTime date,
    String? comment,
  ) =>
      EditBuyScreenCubitState(
        id: id,
        scoreItem: scoreItem,
        categoryItem: categoryItem,
        amount: amount,
        date: date,
        comment: comment,
      );
  factory EditBuyScreenCubitState.empty() => EditBuyScreenCubitState(
        id: null,
        scoreItem: null,
        categoryItem: null,
        amount: null,
        date: DateTime.now(),
        comment: null,
      );
}
