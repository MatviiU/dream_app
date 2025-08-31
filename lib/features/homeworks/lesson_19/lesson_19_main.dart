import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Lesson19MainScreen extends StatelessWidget {
  const Lesson19MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Урок 19: Cubit та Bloc'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildNavigationCard(
              context,
              title: 'Домашка з Cubit',
              icon: Icons.widgets_outlined,
              routeName: Lesson19ScreenNames.cubit19Screen,
              description: 'Керування станом за допомогою Cubit',
            ),
            const SizedBox(height: 20),
            _buildNavigationCard(
              context,
              title: 'Домашка з Bloc',
              icon: Icons.layers_outlined,
              routeName: Lesson19ScreenNames.bloc19Screen,
              description: 'Керування станом за допомогою Bloc',
            ),
          ],
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
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
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (description != null) ...[
                const SizedBox(height: 8.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
