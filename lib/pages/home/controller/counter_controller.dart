import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/pages/home/controller/counter_state.dart';
import 'package:flutter_starter_riverpod/pages/home/model/counter.dart';

final counterControllerProvider =
    StateNotifierProvider<CounterController, CounterState>(
  (ref) => CounterController(),
);

final counterCountProvider = Provider(
  (ref) {
    final counterState = ref.watch(counterControllerProvider);

    return counterState.counter.count;
  },
);

class CounterController extends StateNotifier<CounterState> {
  CounterController()
      : super(
          const CounterState(
            Counter(0),
          ),
        );

  void increment() {
    state = CounterState(Counter(state.counter.count + 1));
  }
}
