import 'package:dream_app/features/homeworks/lesson_23/data/repository/fake_user_repository.dart';
import 'package:dream_app/features/homeworks/lesson_23/errors/custom_server_error.dart';
import 'package:dream_app/features/homeworks/lesson_23/presentation/cubit/user_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.repository) : super(UserProfileInitial());

  final FakeUserRepository repository;

  Future<void> loadUserProfile() async {
    try {
      emit(UserProfileLoading());

      final user = await repository.getUserProfile();

      emit(UserProfileLoaded(user));
    } on CustomServerError catch (e) {
      emit(UserProfileError(e.errorMessage));
    } catch (e) {
      emit(UserProfileError('An unknown error occurred'));
    }
  }
}
