import 'package:json_annotation/json_annotation.dart';

part 'cheque_actions_dto.g.dart';

@JsonSerializable()
class ChequeActionsDTO {
  ChequeActionsDTO({
    this.actionType,
    this.actionTypeCodeName,
    this.actionId,
    this.discpercent,
    this.discount,
    this.varcharData,
  });

  factory ChequeActionsDTO.fromJson(Map<String, dynamic> json) =>
      _$ChequeActionsDTOFromJson(json);

  int? actionType;
  dynamic actionTypeCodeName;
  int? actionId;
  int? discpercent;
  int? discount;
  String? varcharData;
}
