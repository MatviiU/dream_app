import 'package:dream_app/config/lesson_19/router/lesson_19_router.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_bloc/bloc/lesson_19_bloc.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_cubit/cubit/lesson_nineteen_cubit.dart';
import 'package:dream_app/features/homeworks/lesson_20/presentation/cubit/rate_app_cubit.dart';
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
        BlocProvider(create: (context) => RateAppCubit()),
      ],
      child: MaterialApp.router(routerConfig: lesson19Router),
    );
  }
}
