import 'package:dream_app/features/homeworks/lesson_23/data/repository/entity/user_entity.dart';
import 'package:dream_app/features/homeworks/lesson_23/errors/custom_server_error.dart';

class FakeUserRepository {
  bool _hasFailed = false;

  Future<UserEntity> getUserProfile() async {
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      if (!_hasFailed) {
        _hasFailed = true;
        throw Exception('Server is temporarily unavailable');
      }
      return UserEntity(id: '1', name: 'Test User');
    } catch (e) {
      throw CustomServerError(
        "Couldn't fetch user data from the server",
      );
    }
  }
}
