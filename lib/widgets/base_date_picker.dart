import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BaseDatePickerField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final DateTime? selectedDate;
  final bool isRequired;
  final bool isButtonClicked;
  final void Function(DateTime date) onDateSelected;
  final double width;
  final double height;

  const BaseDatePickerField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.selectedDate,
    required this.onDateSelected,
    required this.isRequired,
    required this.isButtonClicked,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final bool showError = isRequired && selectedDate == null && isButtonClicked;

    return SizedBox(
      width: (width / 1.15081081081),
      height: height,
      child: GestureDetector(
        onTap: () async {
          DateTime now = DateTime.now();
          final pickedDate = await showDatePicker(
            context: context,
            initialDate: selectedDate ?? now,
            firstDate: DateTime(1900),
            lastDate: DateTime(now.year + 1),
          );

          if (pickedDate != null) {
            onDateSelected(pickedDate);
          }
        },
        child: AbsorbPointer(
          child: TextFormField(
            style: GoogleFonts.poppins(
              fontSize: width / 36,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(204, 0, 0, 0),
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(41, 217, 217, 217),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                color: showError ? Colors.red : Colors.black,
                fontSize: width / 36,
              ),
              labelText: showError ? '$labelText (Required):' : labelText,
              labelStyle: GoogleFonts.poppins(
                color: showError ? Colors.red : Colors.black,
                fontSize: width / 36,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width / 1.9),
                borderSide: BorderSide(
                  color: showError
                      ? Colors.red
                      : const Color.fromARGB(41, 217, 217, 217),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width / 1.9),
                borderSide: BorderSide(
                  color: showError
                      ? Colors.red
                      : const Color.fromARGB(41, 217, 217, 217),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width / 1.9),
                borderSide: BorderSide(
                  color: showError
                      ? Colors.red
                      : const Color.fromARGB(41, 217, 217, 217),
                ),
              ),
            ),
            readOnly: true,
            controller: TextEditingController(
              text: selectedDate != null
                  ? DateFormat('dd MMMM yyyy').format(selectedDate!)
                  : '',
            ),
          ),
        ),
      ),
    );
  }
}
