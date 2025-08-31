import 'package:dream_app/features/homeworks/lesson_19/homework_%D1%81ubit/cubit/lesson_19_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Lesson19Cubit extends Cubit<Lesson19CubitState> {
  Lesson19Cubit() : super(const Lesson19CubitState(counter: 0));

  void incrementCounter() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrementCounter() {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
