import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormDateInput extends StatefulWidget {
  const FormDateInput({
    super.key,
    required this.inputController,
    required this.label,
    this.hintText = "",
  });

  final TextEditingController inputController;
  final String label;
  final String hintText;

  @override
  State<FormDateInput> createState() => _FormDateInputState();
}

class _FormDateInputState extends State<FormDateInput> {
  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        controller.text = DateFormat('MMMM yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.inputController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        labelText: '${widget.label}*',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        hintText: widget.hintText,
      ),
      readOnly: true,
      onTap: () {
        _selectDate(context, widget.inputController);
      },
    );
  }
}
