import 'package:flutter/material.dart';

class RateComment extends StatelessWidget {
  const RateComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          const Text(
            'Є що додати?',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color.fromRGBO(32, 33, 36, 1),
            ),
          ),
          TextField(
            maxLines: null,
            decoration: InputDecoration(
              hintText: 'Поділіться загальним враженням',
              hintStyle: const TextStyle(
                color: Color.fromRGBO(32, 33, 36, 0.54),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(32, 33, 36, 0.24),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(32, 33, 36, 0.24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
