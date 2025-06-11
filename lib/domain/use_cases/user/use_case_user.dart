import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/data/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/user_repository.dart';

final useCaseUserProvider = Provider<UseCaseUser>((ref) {
  return UseCaseUser(
    ref.read(userRepositoryProvider),
  );
});

class UseCaseUser {
  const UseCaseUser(this._userRepository);

  final UserRepository _userRepository;

  Future<User?> getUser() async {
    return await _userRepository.getUser();
  }

  Future<User?> saveUser(User user) async {
    User? savedUser = await _userRepository.getUser();
    if (savedUser != null) {
      return await _userRepository.updateUser(user);
    } else {
      return await _userRepository.createUser(user);
    }
  }
}
