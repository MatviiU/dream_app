import 'package:dream_app/features/homeworks/lesson_26/data/repository/models/silpo_cheque_entity.dart';
import 'package:flutter/material.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({required this.silpoCheque, super.key});

  final SilpoChequeEntity silpoCheque;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'СУМА',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Text(
          '${silpoCheque.totalAmount.toStringAsFixed(2)} грн',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
