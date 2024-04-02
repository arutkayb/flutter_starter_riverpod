import 'package:flutter_starter_riverpod/data/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/repository_base.dart';

class UserRepository extends RepositoryBase {
  UserRepository(super.localDataSource, super.remoteDataSource);

  Future<User?> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  Future<User?> createUser(User user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  Future<User?> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
