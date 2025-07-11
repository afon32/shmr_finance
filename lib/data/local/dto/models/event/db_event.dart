import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_event.freezed.dart';
part 'db_event.g.dart';

@freezed
abstract class DBEvent with _$DBEvent {
  const factory DBEvent({
    required Map<String, dynamic> request,
  }) = _DBEvent;

  factory DBEvent.fromJson(Map<String, dynamic> json) =>
      _$DBEventFromJson(json);
}
