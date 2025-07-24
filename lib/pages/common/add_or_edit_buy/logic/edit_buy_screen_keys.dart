import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';

enum EditBuyScreenKeys {
  scoreItem(
    key: ValueKey('scoreItem'),
  ),
  scoreDropDownItem(
    key: ValueKey('scoreDropDownItem'),
  ),
  categoryItem(
    key: ValueKey('categoryItem'),
  ),
  categoryDropDownItem(
    key: ValueKey('categoryDropDownItem'),
  ),
  amountItem(
    key: ValueKey('amountItem'),
  ),
  dateSelectorItem(
    key: ValueKey('dateSelectorItem'),
  ),
  timeSelectorItem(
    key: ValueKey('timeSelectorItem'),
  ),
  commentItem(
    key: ValueKey('commentItem'),
  );

  final Key key;
  const EditBuyScreenKeys({required this.key});
}
