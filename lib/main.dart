import 'package:dream_app/features/homeworks/lesson_13/homework_13_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework 13',
      home: HomeworkThirteenScreen(),
    );
  }
}
