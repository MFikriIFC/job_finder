import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateNoFormInput extends StatefulWidget {
  const DateNoFormInput({
    super.key,
    required this.inputController,
    required this.label,
    this.hintText = "",
    this.additionalCondition,
  });

  final TextEditingController inputController;
  final String label;
  final String hintText;
  final bool? additionalCondition;

  @override
  State<DateNoFormInput> createState() => _DateNoFormInputState();
}

class _DateNoFormInputState extends State<DateNoFormInput> {
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
    return TextField(
      controller: widget.inputController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: "End Date*",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        hintText: widget.hintText,
      ),
      readOnly: true,
      onTap: () {
        if (widget.additionalCondition == null ||
            !widget.additionalCondition!) {
          _selectDate(context, widget.inputController);
        }
      },
    );
  }
}
