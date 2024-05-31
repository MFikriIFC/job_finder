import 'package:flutter/material.dart';

class TextNoFormInput extends StatelessWidget {
  const TextNoFormInput({
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
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text('$label'),
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
