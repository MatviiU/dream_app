import 'package:json_annotation/json_annotation.dart';

part 'alert_dto.g.dart';

@JsonSerializable()
class AlertDTO {
  AlertDTO({
    this.id,
    this.locationTitle,
    this.locationType,
    this.startedAt,
    this.alertType,
  });

  factory AlertDTO.fromJson(Map<String, dynamic> json) =>
      _$AlertDTOFromJson(json);

  final int? id;
  @JsonKey(name: 'location_title')
  final String? locationTitle;
  @JsonKey(name: 'location_type')
  final String? locationType;
  @JsonKey(name: 'started_at')
  final String? startedAt;
  @JsonKey(name: 'alert_type')
  final String? alertType;
}
