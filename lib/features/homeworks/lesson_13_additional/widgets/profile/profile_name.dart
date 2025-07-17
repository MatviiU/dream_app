import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({required this.profileName, super.key});

  final String profileName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        profileName,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
