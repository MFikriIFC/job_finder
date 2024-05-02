import 'package:flutter/material.dart';
import '../radio_item.dart';

class ChattingPageFilter extends StatefulWidget {
  const ChattingPageFilter({super.key});

  @override
  State<ChattingPageFilter> createState() => _ChattingPageFilterState();
}

class _ChattingPageFilterState extends State<ChattingPageFilter> {
  late int? _selectedValue;

  final List<String> _filterList = [
    'Draft on this device',
    'Unread',
    'My Connections',
    'InMail',
    'Archived',
    'Spam',
    'Starred'
  ];

  @override
  void initState() {
    super.initState();
    _selectedValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ..._filterList.asMap().entries.map((e) {
            final index = e.key;
            final label = e.value;
            return Column(
              children: [
                RadioItem(
                  value: index + 1,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                  label: label,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            );
          }).toList()
          // Add more RadioItems for other options
        ],
      ),
    );
  }
}
