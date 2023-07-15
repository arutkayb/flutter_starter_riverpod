import 'package:dio/dio.dart';
import 'package:flutter_starter_riverpod/data/repository/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/remote/i_remote_data_manager.dart';

class RemoteDataManager implements IRemoteDataManager {
  final dio = Dio();

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
