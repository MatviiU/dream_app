import 'package:json_annotation/json_annotation.dart';

part 'cheque_header_dto.g.dart';

@JsonSerializable()
class ChequeHeaderDTO {
  ChequeHeaderDTO({
    this.filId,
    this.chequeId,
    this.created,
    this.loyaltyFactId,
    this.businessCardId,
    this.sumReg,
    this.sumBalance,
    this.filialName,
    this.cityName,
    this.frId,
    this.zId,
    this.frChequeId,
    this.payType,
    this.payTypeArray,
    this.fiscalNumber,
    this.externalOperationId,
  });

  factory ChequeHeaderDTO.fromJson(Map<String, dynamic> json) =>
      _$ChequeHeaderDTOFromJson(json);

  int? filId;
  int? chequeId;
  String? created;
  int? loyaltyFactId;
  int? businessCardId;
  double? sumReg;
  double? sumBalance;
  String? filialName;
  String? cityName;
  int? frId;
  int? zId;
  int? frChequeId;
  int? payType;
  List<dynamic>? payTypeArray;
  String? fiscalNumber;
  dynamic externalOperationId;
}
