part of 'lesson_19_bloc.dart';

abstract class Lesson19Event{
  const Lesson19Event();
}

class Lesson19BlocIncrementEvent extends Lesson19Event{}

class Lesson19BlocDecrementEvent extends Lesson19Event{}