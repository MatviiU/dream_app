import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_%D1%81ubit/homework_%D1%81ubit_screen.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_bloc/homework_bloc_screen.dart';
import 'package:dream_app/features/state_managment/state_management_main_screen.dart';
import 'package:go_router/go_router.dart';

final lesson19Router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Lesson19ScreenNames.main19Screen,
      builder: (context, state) => const StateManagementMainScreen(),
      routes: [
        GoRoute(
          path: 'cubit',
          name: Lesson19ScreenNames.cubit19Screen,
          builder: (context, state) =>
              const HomeworkCubitScreen(title: 'Cubit'),
        ),
        GoRoute(
          path: 'bloc',
          name: Lesson19ScreenNames.bloc19Screen,
          builder: (context, state) => const HomeworkBlocScreen(title: 'Bloc'),
        ),
      ],
    ),
  ],
);
