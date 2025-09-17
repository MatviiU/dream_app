import 'package:dream_app/features/homeworks/lesson_27/data/data_source/models/alert_dto.dart';

class AlertEntity {
  const AlertEntity({
    required this.id,
    required this.locationTitle,
    required this.locationType,
    required this.startedAt,
    required this.alertType,
  });

  factory AlertEntity.fromDto(AlertDTO dto) {
    final date = DateTime.parse(dto.startedAt ?? '');
    return AlertEntity(
      id: dto.id ?? 0,
      locationTitle: dto.locationTitle ?? '',
      locationType: dto.locationType ?? '',
      startedAt: date,
      alertType: dto.alertType ?? '',
    );
  }

  final int id;
  final String locationTitle;
  final String locationType;
  final DateTime startedAt;
  final String alertType;
}
