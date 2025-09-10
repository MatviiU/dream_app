import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/additional_data_dto.dart';
import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/like_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cheque_lines_dto.g.dart';

@JsonSerializable()
class ChequeLinesDTO {
  ChequeLinesDTO({
    this.chequeLineId,
    this.lagerId,
    this.lagerNameUA,
    this.lagerUnit,
    this.kolvo,
    this.priceOut,
    this.unitText,
    this.fileName,
    this.sumCashbackLine,
    this.additionalData,
    this.like,
  });

  factory ChequeLinesDTO.fromJson(Map<String, dynamic> json) =>
      _$ChequeLinesDTOFromJson(json);

  int? chequeLineId;
  int? lagerId;
  String? lagerNameUA;
  String? lagerUnit;
  int? kolvo;
  double? priceOut;
  String? unitText;
  String? fileName;
  int? sumCashbackLine;
  AdditionalDataDTO? additionalData;
  LikeDTO? like;
}
