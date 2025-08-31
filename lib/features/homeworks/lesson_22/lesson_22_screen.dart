import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Lesson22MainScreen extends StatelessWidget {
  const Lesson22MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Урок 22: Flutter Анімації'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.primary,
                theme.colorScheme.primaryContainer,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.surface,
              theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: _buildAnimationCard(
              context,
              title: "Анімація м'яча",
              description: 'Демонстрація простої анімації руху віджета.',
              icon: Icons.sports_soccer,
              gradientColors: [Colors.orangeAccent, Colors.deepOrange],
              routeName: Lesson19ScreenNames.bouncingBallScreen,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimationCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required List<Color> gradientColors,
    required String routeName,
  }) {
    final theme = Theme.of(context);
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.goNamed(routeName);
        },
        splashColor: gradientColors.last.withValues(alpha: 0.3),
        highlightColor: gradientColors.first.withValues(alpha: .2),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white.withValues(alpha: 0.9),
                  child: Icon(icon, size: 32.0, color: gradientColors.first),
                ),
                const SizedBox(height: 20.0),
                Text(
                  title,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
                const SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withValues(alpha: 0.8),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
