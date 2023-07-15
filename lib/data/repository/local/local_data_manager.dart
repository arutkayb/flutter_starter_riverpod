import 'package:flutter_starter_riverpod/data/repository/local/i_local_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/models/user.dart';

class LocalDataManager implements ILocalDataManager {
  @override
  Future<User?> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User?> createUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<User?> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
