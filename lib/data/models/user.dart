import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

// optional: Since our User class is serializable, we must add this line.
// But if User was not serializable, we could skip it.
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(String id) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
