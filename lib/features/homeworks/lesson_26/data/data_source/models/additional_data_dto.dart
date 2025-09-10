import 'package:json_annotation/json_annotation.dart';

part 'additional_data_dto.g.dart';

@JsonSerializable()
class AdditionalDataDTO {
  AdditionalDataDTO({
    this.id,
    this.title,
    this.icon,
    this.ratio,
    this.sectionSlug,
    this.companyId,
    this.externalProductId,
    this.slug,
    this.classifierSapId,
    this.brandId,
    this.brandTitle,
    this.weighted,
    this.departmentName,
    this.barcodes,
    this.weight,
    this.scanExcise,
  });

  factory AdditionalDataDTO.fromJson(Map<String, dynamic> json) =>
      _$AdditionalDataDTOFromJson(json);

  String? id;
  String? title;
  String? icon;
  String? ratio;
  String? sectionSlug;
  String? companyId;
  String? externalProductId;
  String? slug;
  String? classifierSapId;
  String? brandId;
  String? brandTitle;
  bool? weighted;
  String? departmentName;
  List<String>? barcodes;
  double? weight;
  bool? scanExcise;
}
