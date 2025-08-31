import 'package:flutter_bloc/flutter_bloc.dart';

part 'lesson_19_event.dart';

part 'lesson_19_bloc_state.dart';

class Lesson19Bloc extends Bloc<Lesson19Event, Lesson19BlocState> {
  Lesson19Bloc() : super(const Lesson19BlocState(counter: 0)) {
    on<Lesson19BlocIncrementEvent>(_onIncrement);
    on<Lesson19BlocDecrementEvent>(_onDecrement);
  }

  void _onIncrement(
    Lesson19BlocIncrementEvent event,
    Emitter<Lesson19BlocState> emit,
  ) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _onDecrement(
    Lesson19BlocDecrementEvent event,
    Emitter<Lesson19BlocState> emit,
  ) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
