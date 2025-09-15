import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/silpo_cheque_dto.dart';

class SilpoChequeEntity {
  SilpoChequeEntity({
    required this.chequeId,
    required this.totalAmount,
    required this.items,
    required this.prediction,
  });

  factory SilpoChequeEntity.fromDto(SilpoChequeDto dto) {
    return SilpoChequeEntity(
      chequeId: dto.chequeHeader?.chequeId ?? 0,
      totalAmount: dto.chequeHeader?.sumReg ?? 0.0,
      items:
          dto.chequeLines?.map((line) => line.lagerNameUA ?? '').toList() ?? [],
      prediction: dto.chPrediction!,
    );
  }

  final int chequeId;
  final double totalAmount;
  final List<String> items;
  final String prediction;
}
