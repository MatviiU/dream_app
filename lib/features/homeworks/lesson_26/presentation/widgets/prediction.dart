import 'package:dream_app/features/homeworks/lesson_26/data/repository/models/silpo_cheque_entity.dart';
import 'package:flutter/material.dart';

class Prediction extends StatelessWidget {
  const Prediction({required this.silpoCheque, super.key});

  final SilpoChequeEntity silpoCheque;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          silpoCheque.prediction,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
            color: Colors.orange.shade800,
          ),
        ),
      ),
    );
  }
}
