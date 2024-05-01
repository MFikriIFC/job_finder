import 'package:flutter/material.dart';

class RadioItem extends StatelessWidget {
  final int value;
  final int? groupValue;
  final ValueChanged<int?> onChanged;
  final String label;

  const RadioItem({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Radio<int>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
