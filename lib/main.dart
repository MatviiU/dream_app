import 'package:dream_app/features/homeworks/lesson_13_additional/homework_13_additional_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Homework 13',
      home: HomeworkThirteenAdditionalScreen(),
    );
  }
}
