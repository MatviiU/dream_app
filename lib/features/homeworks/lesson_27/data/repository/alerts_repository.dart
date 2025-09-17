import 'package:dream_app/features/homeworks/lesson_27/data/data_source/alerts_data_source.dart';
import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';

class AlertsRepository {
  const AlertsRepository({required this.alertsDataSource});

  final AlertsDataSource alertsDataSource;

  Future<List<AlertEntity>> getAlerts() async {
    try {
      final alerts = await alertsDataSource.getAlerts();
      final entities = alerts.map(AlertEntity.fromDto).toList();
      return entities;
    } on Exception catch (e) {
      throw Exception('(AlertsRepository): Failed to load alerts: $e');
    }
  }
}
