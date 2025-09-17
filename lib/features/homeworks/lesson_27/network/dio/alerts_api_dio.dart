import 'package:dio/dio.dart';
import 'package:dream_app/features/homeworks/lesson_27/data/data_source/models/alert_dto.dart';
import 'package:dream_app/features/homeworks/lesson_27/network/alerts_api_base.dart';

class AlertsApiDio implements AlertsApiBase {
  AlertsApiDio({required this.dio});

  final Dio dio;

  static const String _apiKey = String.fromEnvironment('API_KEY');

  @override
  Future<List<AlertDTO>> getAlerts() async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '/alerts/active.json',
        queryParameters: {'token': _apiKey},
      );
      final data = response.data?['alerts'] as List?;
      if (data == null) {
        throw Exception('Failed to load alerts, ${response.statusCode}');
      }

      final alerts = data
          .map((alert) => AlertDTO.fromJson(alert as Map<String, dynamic>))
          .toList();

      return alerts;
    } on Exception catch (e) {
      throw Exception('(AlertsApiDio): Failed to load alerts: $e');
    }
  }
}
