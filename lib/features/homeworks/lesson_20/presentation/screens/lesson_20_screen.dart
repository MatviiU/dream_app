import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Lesson20Screen extends StatelessWidget {
  const Lesson20Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter lab'),
        backgroundColor: Colors.amber.shade100,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Lesson 20'),
            ElevatedButton(
              onPressed: () =>
                  context.goNamed(Lesson19ScreenNames.rateAppScreen),
              child: const Text('Rate App'),
            ),
          ],
        ),
      ),
    );
  }
}
