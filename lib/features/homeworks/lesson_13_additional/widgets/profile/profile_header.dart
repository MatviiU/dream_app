import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(radius: 80),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Редагувати'),
            ),
          ),
        ],
      ),
    );
  }
}
