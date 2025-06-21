import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum MarriageStatus {
  single,
  married,
  divorced,
  widowed,
  separated,
  preferNotToSay,
}
