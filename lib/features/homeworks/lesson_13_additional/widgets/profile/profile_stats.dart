import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({required this.title, required this.subtitle, super.key});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(title, textAlign: TextAlign.center),
          Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
