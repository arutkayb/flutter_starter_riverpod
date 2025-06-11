import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/data/data_sources/local/local_data_source.dart';
import 'package:flutter_starter_riverpod/data/data_sources/remote/remote_data_source.dart';
import 'package:flutter_starter_riverpod/data/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/repository_base.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository(
    ref.read(localDataSourceProvider.notifier),
    ref.read(remoteDataSourceProvider),
  );
});

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
