import 'package:crisis_survivors/utils/extensions/string_extensions.dart';

extension EnumUtils<T extends Enum> on List<T> {

  List<String> get names => map((value) => value.name).toList(); 
  List<String> get pascalCaseNames => map((value) => value.name.toPascalCase()).toList(); 
} 

