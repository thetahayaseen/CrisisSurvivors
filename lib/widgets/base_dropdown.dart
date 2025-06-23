import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseDropdown extends StatelessWidget {
  final List<String> items;
  final String? selectedValue;
  final void Function(String?) onChanged;
  final String label;
  final bool isButtonClicked;
  final double width;

  const BaseDropdown({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.label,
    required this.isButtonClicked,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final isEmpty = selectedValue == null && isButtonClicked;

    return SizedBox(
      width: (width / 1.15081081081),
      height: (width / 9),
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        style: GoogleFonts.poppins(
          fontSize: width / 36,
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(204, 0, 0, 0),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(41, 217, 217, 217),
          labelText: isEmpty ? '$label (Required)' : label,
          labelStyle: GoogleFonts.poppins(
            color: isEmpty ? Colors.red : Colors.black,
            fontSize: width / 36,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmpty ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmpty ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmpty ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
        ),
        items: items.map((item) => DropdownMenuItem(value: item, child: Text(item))).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
