import 'package:flutter_starter_riverpod/data/repository/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/use_cases/use_case_base.dart';
import 'package:flutter_starter_riverpod/data/repository/use_cases/user/i_use_case_user.dart';

class UseCaseUser extends UseCaseBase implements IUseCaseUser {
  const UseCaseUser(super.localDataManager, super.remoteDataManager);

  @override
  Future<User?> getUser() async {
    return await localDataManager.getUser();
  }

  @override
  Future<User?> saveUser(User user) async {
    User? savedUser = await localDataManager.getUser();
    if (savedUser != null) {
      return await localDataManager.updateUser(user);
    } else {
      return await localDataManager.createUser(user);
    }
  }
}
