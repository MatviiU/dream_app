import 'package:dream_app/features/homeworks/lesson_14/rate/widgets/rate_item.dart';
import 'package:flutter/material.dart';

class RateCategoryCard extends StatelessWidget {
  const RateCategoryCard({
    required this.title,
    required this.subtitles,
    super.key,
  });

  final String title;
  final List<String> subtitles;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(19, 19, 30, 1),
            ),
          ),
          ...subtitles.map((subtitle) => RateItem(subtitle: subtitle)),
        ],
      ),
    );
  }
}
