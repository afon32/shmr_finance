import 'package:freezed_annotation/freezed_annotation.dart';

part 'secure_data.freezed.dart';
part 'secure_data.g.dart';

@freezed
abstract class SecureData with _$SecureData {
  const factory SecureData({
    required bool bioIsOn,
    required String pin,
  }) = _SecureData;

  factory SecureData.fromJson(Map<String, dynamic> json) =>
      _$SecureDataFromJson(json);

  factory SecureData.initial() => SecureData(bioIsOn: false, pin: 'none');
}
