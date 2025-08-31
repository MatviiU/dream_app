import 'package:dream_app/features/homeworks/lesson_19/homework_bloc/bloc/lesson_19_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkBlocScreen extends StatelessWidget {
  const HomeworkBlocScreen({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Lesson19Bloc, Lesson19BlocState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<Lesson19Bloc>().add(
                    Lesson19BlocIncrementEvent(),
                  );
                },
                heroTag: 'bloc_increment_fab',
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<Lesson19Bloc>().add(
                    Lesson19BlocDecrementEvent(),
                  );
                },
                heroTag: 'bloc_decrement_fab',
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
