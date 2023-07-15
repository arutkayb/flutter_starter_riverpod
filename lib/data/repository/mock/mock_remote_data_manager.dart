import 'package:flutter_starter_riverpod/data/repository/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/remote/i_remote_data_manager.dart';

class MockRemoteDataManager implements IRemoteDataManager {
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
