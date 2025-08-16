part of 'lesson_19_bloc.dart';

class Lesson19BlocState {
  const Lesson19BlocState({required this.counter});

  final int counter;

  Lesson19BlocState copyWith({int? counter}) {
    return Lesson19BlocState(counter: counter ?? this.counter);
  }
}
