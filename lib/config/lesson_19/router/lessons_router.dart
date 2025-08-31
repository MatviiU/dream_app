import 'package:dream_app/config/lesson_19/router/screen_names.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_bloc/homework_bloc_screen.dart';
import 'package:dream_app/features/homeworks/lesson_19/homework_cubit/homework_cubit_screen.dart';
import 'package:dream_app/features/homeworks/lesson_19/lesson_19_main.dart';
import 'package:dream_app/features/homeworks/lesson_20/presentation/screens/lesson_20_screen.dart';
import 'package:dream_app/features/homeworks/lesson_20/presentation/screens/rate_app_screen.dart';
import 'package:dream_app/features/homeworks/lesson_22/homework_animations_screen.dart';
import 'package:dream_app/features/homeworks/lesson_22/lesson_22_screen.dart';
import 'package:dream_app/features/homeworks/lesson_23/data/repository/fake_user_repository.dart';
import 'package:dream_app/features/homeworks/lesson_23/presentation/cubit/user_profile_cubit.dart';
import 'package:dream_app/features/homeworks/lesson_23/presentation/ui/screens/user_profile_screen.dart';
import 'package:dream_app/features/navigation/navigation_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final lesson19Router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Lesson19ScreenNames.navigationScreen,
      builder: (context, state) => const NavigationScreen(),
      routes: [
        GoRoute(
          path: 'lesson-19-main',
          name: Lesson19ScreenNames.main19Screen,
          builder: (context, state) => const Lesson19MainScreen(),
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
              builder: (context, state) =>
                  const HomeworkBlocScreen(title: 'Bloc'),
            ),
          ],
        ),
        GoRoute(
          path: 'lesson-20-main',
          name: Lesson19ScreenNames.lesson20Screen,
          builder: (context, state) => const Lesson20Screen(),
          routes: [
            GoRoute(
              path: 'rate-app',
              name: Lesson19ScreenNames.rateAppScreen,
              builder: (context, state) => const RateAppScreen(),
            ),
          ],
        ),
        GoRoute(
          path: 'lesson-22-main',
          name: Lesson19ScreenNames.lesson22Screen,
          builder: (context, state) => const Lesson22MainScreen(),
          routes: [
            GoRoute(
              path: 'bouncing-ball',
              name: Lesson19ScreenNames.bouncingBallScreen,
              builder: (context, state) => const BouncingBallScreen(),
            ),
          ],
        ),
        GoRoute(
          path: 'lesson-23-main',
          name: Lesson19ScreenNames.lesson23Screen,
          builder: (context, state) {
            return RepositoryProvider(
              create: (context) => FakeUserRepository(),
              child: BlocProvider(
                create: (context) {
                  final repository = context.read<FakeUserRepository>();
                  return UserProfileCubit(repository)..loadUserProfile();
                },
                child: const UserProfileScreen(),
              ),
            );
          },
        ),
      ],
    ),
  ],
);
