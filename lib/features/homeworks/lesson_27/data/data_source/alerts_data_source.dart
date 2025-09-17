import 'package:dream_app/features/homeworks/lesson_27/data/data_source/models/alert_dto.dart';
import 'package:dream_app/features/homeworks/lesson_27/network/alerts_api_base.dart';

class AlertsDataSource {
  AlertsDataSource({required this.alertsApi});

  final AlertsApiBase alertsApi;

  Future<List<AlertDTO>> getAlerts() async {
    try {
      final alerts = await alertsApi.getAlerts();
      return alerts;
    } on Exception catch (e) {
      throw Exception('(AlertsDataSource): Failed to load alerts: $e');
    }
  }
}
