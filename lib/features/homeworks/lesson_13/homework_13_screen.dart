import 'package:dream_app/features/homeworks/lesson_13/widgets/my_container.dart';
import 'package:flutter/material.dart';

class HomeworkThirteenScreen extends StatelessWidget {
  const HomeworkThirteenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homework 13'), centerTitle: true),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            spacing: 8,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: MyContainer(
                  color: Colors.blue,
                  alignment: Alignment.topLeft,
                ),
              ),
              MyContainer(color: Colors.green, alignment: Alignment.center),
              MyContainer(color: Colors.red, alignment: Alignment.bottomRight),
            ],
          ),
        ),
      ),
    );
  }
}
