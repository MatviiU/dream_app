class Lesson19CubitState {
  const Lesson19CubitState({required this.counter});

  final int counter;

  Lesson19CubitState copyWith({int? counter}) {
    return Lesson19CubitState(counter: counter ?? this.counter);
  }
}
