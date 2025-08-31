import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        appBar: AppBar(title: const Text('Навігація по домашках')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildNavigationCard(
                  context,
                  title: 'Урок 19: Cubit та Bloc',
                  icon: Icons.school_outlined,
                  routeName: Lesson19ScreenNames.main19Screen,
                  description: 'Приклади керування станом',
                ),
                _buildNavigationCard(
                  context,
                  title: 'Урок 20: Інші завдання',
                  icon: Icons.lightbulb_outline,
                  routeName: Lesson19ScreenNames.lesson20Screen,
                  description: 'Додаткові домашні завдання',
                ),
                _buildNavigationCard(
                  context,
                  title: 'Урок 22: Анімації',
                  icon: Icons.animation,
                  routeName: Lesson19ScreenNames.lesson22Screen,
                  description: 'Приклади Flutter анімацій',
                ),
                _buildNavigationCard(
                  context,
                  title: 'Урок 23: Обробка помилок',
                  icon: Icons.error_outline,
                  routeName: Lesson19ScreenNames.lesson23Screen,
                  description: 'Приклад обробки помилок',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required String routeName,
    String? description,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: () {
          context.goNamed(routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48.0,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 16.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (description != null) ...[
                const SizedBox(height: 8.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
