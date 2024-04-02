import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  final _sharedPreferences = SharedPreferences.getInstance();
}
