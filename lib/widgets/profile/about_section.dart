import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "About",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.create_outlined,
                color: Colors.grey.shade700,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Actress in South Korea, portraying diverse roles while pursuing academic excellence at Universitas Mikroskil. Passionate about storytelling, I explore the human experience through film and television, driven by a commitment to personal growth in both realms.",
          ),
        ],
      ),
    );
  }
}
