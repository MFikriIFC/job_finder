import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Skills",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          SkillItem(skill: "Flutter", initialLevel: 70),
          const Divider(height: 32, color: Color.fromARGB(255, 244, 242, 238)),
          SkillItem(skill: "React", initialLevel: 60),
          const Divider(height: 32, color: Color.fromARGB(255, 244, 242, 238)),
          SkillItem(skill: "Python", initialLevel: 80),
        ],
      ),
    );
  }
}

class SkillItem extends StatefulWidget {
  final String skill;
  final double initialLevel;

  const SkillItem({required this.skill, required this.initialLevel, super.key});

  @override
  _SkillItemState createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  late double _skillLevel;

  @override
  void initState() {
    super.initState();
    _skillLevel = widget.initialLevel;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.skill,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Slider(
          value: _skillLevel,
          min: 0,
          max: 100,
          divisions: 10,
          label: _skillLevel.round().toString(),
          onChanged: (double value) {
            setState(() {
              _skillLevel = value;
            });
          },
        ),
        Text(
          'Proficiency: ${_skillLevel.round()}%',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
