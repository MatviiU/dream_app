import 'package:dream_app/config/lesson_19/router/lesson_19_router.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_%D1%81ubit/cubit/lesson_19_cubit.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_bloc/bloc/lesson_19_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Lesson19Cubit()),
        BlocProvider(create: (context) => Lesson19Bloc()),
      ],
      child: MaterialApp.router(routerConfig: lesson19Router),
    );
  }
}
