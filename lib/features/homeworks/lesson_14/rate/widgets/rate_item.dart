import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/rate_buttons.dart';
import 'package:flutter/material.dart';

class RateItem extends StatelessWidget {
  const RateItem({required this.subtitle, super.key});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F8FD),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withValues(alpha: 0.04)),
      ),
      child: Row(
        spacing: 12,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(32, 33, 36, 0.87),
            ),
          ),
          const Spacer(),
          const RateButtons(),
        ],
      ),
    );
  }
}
