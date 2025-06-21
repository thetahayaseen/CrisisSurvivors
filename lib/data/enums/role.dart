import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum Role {
  unassigned,
  victim,
  donor,
  consultant,
}
