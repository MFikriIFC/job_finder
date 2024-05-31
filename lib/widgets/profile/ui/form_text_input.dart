import 'package:flutter/material.dart';

class FormTextInput extends StatelessWidget {
  const FormTextInput({
    super.key,
    required this.inputController,
    required this.label,
    this.hintText = "",
    this.maxLines = 1,
    this.maxLength,
  });

  final TextEditingController inputController;
  final String label;
  final String hintText;
  final int maxLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        label: Text('$label*'),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        hintText: hintText,
      ),
      maxLines: maxLines,
      maxLength: maxLength,
    );
  }
}
