import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'local_data_source_state.dart';

final localDataSourceProvider =
    StateNotifierProvider<LocalDataSource, LocalDataSourceState>((ref) {
  return LocalDataSource();
});

class LocalDataSource extends StateNotifier<LocalDataSourceState> {
  LocalDataSource() : super(const LocalDataSourceState());

  late final SharedPreferences _sharedPreferences;

  Future<void> initialize() async {
    state = state.copyWith(isLoading: true);
    _sharedPreferences = await SharedPreferences.getInstance();
    final allData = <String, dynamic>{};

    for (final key in _sharedPreferences.getKeys()) {
      allData[key] = _sharedPreferences.get(key);
    }

    state = state.copyWith(
      data: allData,
      isLoading: false,
    );
  }

  void _updateState(String key, dynamic value) {
    final newData = Map<String, dynamic>.from(state.data);
    if (value == null) {
      newData.remove(key);
    } else {
      newData[key] = value;
    }
    state = state.copyWith(data: newData);
  }

  // String operations
  Future<bool> setString(String key, String value) async {
    final prefs = _sharedPreferences;
    final result = await prefs.setString(key, value);
    if (result) {
      _updateState(key, value);
    }
    return result;
  }

  String? getString(String key) => state.data[key] as String?;

  // Boolean operations
  Future<bool> setBool(String key, bool value) async {
    final prefs = _sharedPreferences;
    final result = await prefs.setBool(key, value);
    if (result) {
      _updateState(key, value);
    }
    return result;
  }

  bool? getBool(String key) => state.data[key] as bool?;

  // Integer operations
  Future<bool> setInt(String key, int value) async {
    final prefs = _sharedPreferences;
    final result = await prefs.setInt(key, value);
    if (result) {
      _updateState(key, value);
    }
    return result;
  }

  int? getInt(String key) => state.data[key] as int?;

  // Double operations
  Future<bool> setDouble(String key, double value) async {
    final prefs = _sharedPreferences;
    final result = await prefs.setDouble(key, value);
    if (result) {
      _updateState(key, value);
    }
    return result;
  }

  double? getDouble(String key) => state.data[key] as double?;

  // String list operations
  Future<bool> setStringList(String key, List<String> value) async {
    final prefs = _sharedPreferences;
    final result = await prefs.setStringList(key, value);
    if (result) {
      _updateState(key, value);
    }
    return result;
  }

  List<String>? getStringList(String key) => state.data[key] as List<String>?;

  // Check if key exists
  bool containsKey(String key) => state.data.containsKey(key);

  // Remove data
  Future<bool> remove(String key) async {
    final prefs = _sharedPreferences;
    final result = await prefs.remove(key);
    if (result) {
      _updateState(key, null);
    }
    return result;
  }

  // Clear all data
  Future<bool> clear() async {
    final prefs = _sharedPreferences;
    final result = await prefs.clear();
    if (result) {
      state = state.copyWith(data: {});
    }
    return result;
  }

  // Get all keys
  Set<String> getKeys() => state.data.keys.toSet();
}
