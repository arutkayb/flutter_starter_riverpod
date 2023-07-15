import 'package:flutter_starter_riverpod/data/repository/models/user.dart';

abstract class ILocalDataManager {
  Future<User?> getUser();

  Future<User?> createUser(User user);

  Future<User?> updateUser(User user);
}
