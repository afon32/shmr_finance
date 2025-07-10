import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_update_request.freezed.dart';
part 'account_update_request.g.dart';

@freezed
abstract class ApiAccountUpdateRequest with _$ApiAccountUpdateRequest {
  const factory ApiAccountUpdateRequest({
    required String name,
    required String balance,
    required String currency,
  }) = _ApiAccountUpdateRequest;

  factory ApiAccountUpdateRequest.fromJson(Map<String, dynamic> json) => _$ApiAccountUpdateRequestFromJson(json);
}
