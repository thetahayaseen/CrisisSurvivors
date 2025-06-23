import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final bool isRequired;
  final bool isButtonClicked;
  final double width;

  const BaseTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    required this.isRequired,
    required this.isButtonClicked,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final isEmptyAndClicked = controller.text.isEmpty && isButtonClicked;

    return SizedBox(
      width: (width / 1.15081081081),
      height: (width / 8),
      child: TextField(
        controller: controller,
        style: GoogleFonts.poppins(
          fontSize: width / 36,
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(204, 0, 0, 0),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(41, 217, 217, 217),
          labelText: isEmptyAndClicked && isRequired ? '$label (Required)' : label,
          labelStyle: GoogleFonts.poppins(
            color: isEmptyAndClicked && isRequired ? Colors.red : Colors.black,
            fontSize: width / 36,
            fontWeight: FontWeight.w400,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: isEmptyAndClicked && isRequired ? Colors.red : Colors.black,
            fontSize: width / 36,
            fontWeight: FontWeight.w400,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmptyAndClicked ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmptyAndClicked ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 1.9),
            borderSide: BorderSide(color: isEmptyAndClicked ? Colors.red : const Color.fromARGB(41, 217, 217, 217)),
          ),
        ),
      ),
    );
  }
}
