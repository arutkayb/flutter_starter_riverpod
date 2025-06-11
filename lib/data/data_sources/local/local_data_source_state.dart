import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_data_source_state.freezed.dart';

@freezed
abstract class LocalDataSourceState with _$LocalDataSourceState {
  const factory LocalDataSourceState({
    @Default({}) Map<String, dynamic> data,
    @Default(false) bool isLoading,
  }) = _LocalDataSourceState;
}
