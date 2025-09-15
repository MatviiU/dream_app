import 'dart:convert';

import 'package:dream_app/features/homeworks/lesson_26/data/data_source/models/silpo_cheque_dto.dart';
import 'package:dream_app/features/homeworks/lesson_26/data/repository/models/silpo_cheque_entity.dart';
import 'package:dream_app/features/homeworks/lesson_26/json_example/silpo_cheque_example.dart';
import 'package:dream_app/features/homeworks/lesson_26/presentation/widgets/cheque_header.dart';
import 'package:dream_app/features/homeworks/lesson_26/presentation/widgets/item_list.dart';
import 'package:dream_app/features/homeworks/lesson_26/presentation/widgets/prediction.dart';
import 'package:dream_app/features/homeworks/lesson_26/presentation/widgets/total_amount.dart';
import 'package:flutter/material.dart';

class ChequeScreen extends StatefulWidget {
  const ChequeScreen({super.key});

  @override
  State<ChequeScreen> createState() => _ChequeScreenState();
}

class _ChequeScreenState extends State<ChequeScreen> {
  late final SilpoChequeEntity silpoCheque;

  @override
  void initState() {
    super.initState();
    SilpoChequeEntity parseSilpoCheque() {
      const json = silpoJson;
      final jsonMap = jsonDecode(json) as Map<String, dynamic>;
      final cheque = SilpoChequeDto.fromJson(jsonMap);
      final chequeEntity = SilpoChequeEntity.fromDto(cheque);
      return chequeEntity;
    }

    silpoCheque = parseSilpoCheque();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        appBar: AppBar(title: const Text('Ваші чеки')),
        body: Center(
          child: Card(
            elevation: 4.0,
            margin: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChequeHeader(silpoCheque: silpoCheque),
                  const SizedBox(height: 16),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: 8),
                  Expanded(child: ItemList(silpoCheque: silpoCheque)),
                  const SizedBox(height: 16),
                  TotalAmount(silpoCheque: silpoCheque),
                  const SizedBox(height: 20),
                  Prediction(silpoCheque: silpoCheque),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
