import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class YourRegionCard extends StatelessWidget {
  const YourRegionCard({required this.alert, super.key});

  final AlertEntity alert;

  @override
  Widget build(BuildContext context) {
    final duration = DateTime.now().difference(alert.startedAt);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final durationText =
        '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}';
    final startTime = DateFormat('HH:mm').format(alert.startedAt);

    return Card(
      color: const Color(0xFFD32F2F),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on, color: Colors.white, size: 22),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    alert.locationTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'У ВАШОМУ РЕГІОНІ ТРИВОГА',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Початок о $startTime (триває $durationText)',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
