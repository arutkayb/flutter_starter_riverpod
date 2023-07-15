import 'package:flutter_starter_riverpod/data/repository/local/i_local_data_manager.dart';
import 'package:flutter_starter_riverpod/data/repository/models/user.dart';

class MockLocalDataManager implements ILocalDataManager {
  User? _user;

  @override
  Future<User?> getUser() async {
    return _user;
  }

  @override
  Future<User?> createUser(User user) async {
    _user = user;
    return _user;
  }

  @override
  Future<User?> updateUser(User user) async {
    _user = user;
    return _user;
  }
}
