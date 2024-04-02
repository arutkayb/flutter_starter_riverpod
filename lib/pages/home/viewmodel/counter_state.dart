import 'package:flutter_starter_riverpod/pages/home/model/counter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState(
    Counter counter,
  ) = _CounterState;
}
