import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/ui/widgets/alert_list_item.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/ui/widgets/your_region_card.dart';
import 'package:flutter/material.dart';

class AlertsListWidget extends StatelessWidget {
  const AlertsListWidget({required this.alerts, super.key});

  final List<AlertEntity> alerts;

  @override
  Widget build(BuildContext context) {
    final yourRegionAlert = alerts.first;
    final otherAlerts = alerts.skip(1).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YourRegionCard(alert: yourRegionAlert),
        if (otherAlerts.isNotEmpty)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Інші регіони (${otherAlerts.length})',
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 16),
            itemCount: otherAlerts.length,
            itemBuilder: (context, index) {
              return AlertListItem(alert: otherAlerts[index]);
            },
          ),
        ),
      ],
    );
  }
}
