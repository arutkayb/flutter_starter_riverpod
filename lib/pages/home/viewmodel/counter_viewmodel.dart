import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/pages/home/model/counter.dart';
import 'package:flutter_starter_riverpod/pages/home/viewmodel/counter_state.dart';

final counterViewModelProvider =
    StateNotifierProvider<CounterViewModel, CounterState>(
  (ref) => CounterViewModel(),
);

final counterCountProvider = Provider(
  (ref) {
    final counterState = ref.watch(counterViewModelProvider);

    return counterState.counter.count;
  },
);

class CounterViewModel extends StateNotifier<CounterState> {
  CounterViewModel()
      : super(
          const CounterState(
            Counter(0),
          ),
        );

  void increment() {
    state = CounterState(Counter(state.counter.count + 1));
  }
}
