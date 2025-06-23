extension StringExtensions on String {
  
  String toPascalCase() {
    return split(RegExp(r'[_\s\-]+'))
        .map((word) => word.isEmpty
            ? ''
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join();
  }

}