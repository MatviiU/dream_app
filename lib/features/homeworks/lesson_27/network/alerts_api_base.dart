import 'package:dream_app/features/homeworks/lesson_27/data/data_source/models/alert_dto.dart';

abstract interface class AlertsApiBase{
  Future<List<AlertDTO>> getAlerts();
}