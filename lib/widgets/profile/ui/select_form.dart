import 'package:flutter/material.dart';

class FormSelect extends StatefulWidget {
  const FormSelect({
    super.key,
    required this.value,
    required this.selectData,
    required this.label,
    this.hintText = "",
  });

  final String? value;
  final List<String> selectData;
  final String label;
  final String hintText;

  @override
  State<FormSelect> createState() => FormSelectState();
}

class FormSelectState extends State<FormSelect> {
  String? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: '${widget.label}*',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: widget.hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
      ),
      value: _currentValue,
      items: widget.selectData.map((String jobType) {
        return DropdownMenuItem<String>(
          value: jobType,
          child: Text(
            jobType,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _currentValue = newValue;
        });
      },
    );
  }
}
