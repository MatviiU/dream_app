import 'package:dream_app/features/homeworks/lesson_23/data/repository/entity/user_entity.dart';

sealed class UserProfileState {}

final class UserProfileInitial implements UserProfileState {}

final class UserProfileLoading implements UserProfileState {}

final class UserProfileLoaded implements UserProfileState {
  UserProfileLoaded(this.user);

  final UserEntity user;
}

final class UserProfileError implements UserProfileState {
  UserProfileError(this.errorMessage);

  final String errorMessage;
}
