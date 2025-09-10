import 'package:dream_app/features/homeworks/lesson_26/data/repository/models/silpo_cheque_entity.dart';
import 'package:flutter/material.dart';

class ChequeHeader extends StatelessWidget {
  const ChequeHeader({required this.silpoCheque, super.key});

  final SilpoChequeEntity silpoCheque;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.receipt_long, color: Colors.deepOrange, size: 40),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Фіскальний чек',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '№ ${silpoCheque.chequeId}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
