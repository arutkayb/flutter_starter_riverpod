import 'package:flutter_starter_riverpod/data/repository/models/user.dart';

abstract class IUseCaseUser {
  Future<User?> getUser();

  Future<User?> saveUser(User user);
}
