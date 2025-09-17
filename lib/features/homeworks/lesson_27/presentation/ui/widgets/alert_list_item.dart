import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AlertListItem extends StatelessWidget {
  const AlertListItem({required this.alert, super.key});

  final AlertEntity alert;

  @override
  Widget build(BuildContext context) {
    final startTime = DateFormat('HH:mm').format(alert.startedAt);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Card(
        color: const Color(0xFF2a2a2a),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          leading: const Icon(
            Icons.warning_amber_rounded,
            color: Color(0xFFD32F2F),
          ),
          title: Text(
            alert.locationTitle,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Початок о $startTime',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
          ),
        ),
      ),
    );
  }
}
