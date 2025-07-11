import 'package:freezed_annotation/freezed_annotation.dart';

enum Modification {
  @JsonValue('created')
  created,
  @JsonValue('updated')
  updated,
  @JsonValue('deleted')
  deleted,
  @JsonValue('restored')
  restored,
}
