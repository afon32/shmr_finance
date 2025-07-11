import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';
part 'account_state.g.dart';

@freezed
abstract class ApiAccountState with _$ApiAccountState {
  const factory ApiAccountState(
      {required int id,
      required String name,
      required String balance,
      required String currency}) = _ApiAccountState;

  factory ApiAccountState.fromJson(Map<String, dynamic> json) => _$ApiAccountStateFromJson(json);
}
