import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/cheque_actions_dto.dart';
import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/cheque_header_dto.dart';
import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/cheque_lines_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'silpo_cheque_dto.g.dart';

@JsonSerializable()
class SilpoChequeDto {
  SilpoChequeDto({
    this.chequeHeader,
    this.sumDiscount,
    this.chequeLines,
    this.chequeActions,
    this.chPrediction,
    this.sumCashback,
    this.chequeMagicName,
    this.feedbackRates,
  });

  factory SilpoChequeDto.fromJson(Map<String, dynamic> json) =>
      _$SilpoChequeDtoFromJson(json);

  ChequeHeaderDTO? chequeHeader;
  double? sumDiscount;
  List<ChequeLinesDTO>? chequeLines;
  List<ChequeActionsDTO>? chequeActions;
  String? chPrediction;
  int? sumCashback;
  String? chequeMagicName;
  List<dynamic>? feedbackRates;
}
