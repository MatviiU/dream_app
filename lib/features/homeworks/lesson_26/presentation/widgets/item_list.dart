import 'package:dream_app/features/homeworks/lesson_26/data/repository/models/silpo_cheque_entity.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({required this.silpoCheque, super.key});

  final SilpoChequeEntity silpoCheque;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: silpoCheque.items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            '• ${silpoCheque.items[index]}',
            style: const TextStyle(fontSize: 16),
          ),
        );
      },
    );
  }
}
