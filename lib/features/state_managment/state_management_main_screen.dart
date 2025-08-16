import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StateManagementMainScreen extends StatelessWidget {
  const StateManagementMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  context.goNamed(Lesson19ScreenNames.cubit19Screen),
              child: const Text('HomeworkCubit'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () =>
                  context.goNamed(Lesson19ScreenNames.bloc19Screen),
              child: const Text('HomeworkBloc'),
            ),
          ],
        ),
      ),
    );
  }
}
