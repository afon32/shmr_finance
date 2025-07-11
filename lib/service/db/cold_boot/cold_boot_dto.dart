import 'package:freezed_annotation/freezed_annotation.dart';

part 'cold_boot_dto.freezed.dart';
part 'cold_boot_dto.g.dart';

@freezed
abstract class ColdBootDto with _$ColdBootDto {
  const factory ColdBootDto({
    required int userId,
    /// Холодный старт - true
    @Default(true)
    @JsonKey(
      name: 'cold_boot',
      defaultValue: true,
    )
    bool isColdBoot,
  }) = _ColdBootDto;

  factory ColdBootDto.fromJson(Map<String, dynamic> json) =>
      _$ColdBootDtoFromJson(json);
}
