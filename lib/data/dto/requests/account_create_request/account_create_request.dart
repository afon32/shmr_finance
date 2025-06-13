import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_create_request.freezed.dart';
part 'account_create_request.g.dart';

@freezed
abstract class ApiAccountCreateRequest with _$ApiAccountCreateRequest {
  const factory ApiAccountCreateRequest({
    required String name,
    required String balance,
    required String currency,
  }) = _ApiAccountCreateRequest;

  factory ApiAccountCreateRequest.fromJson(Map<String, dynamic> json) => _$ApiAccountCreateRequestFromJson(json);
}
