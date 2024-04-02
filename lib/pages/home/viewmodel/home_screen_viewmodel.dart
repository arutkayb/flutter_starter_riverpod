import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/common/core/view_state.dart';
import 'package:flutter_starter_riverpod/data/models/user.dart';
import 'package:flutter_starter_riverpod/domain/use_cases/user/use_case_user.dart';
import 'package:flutter_starter_riverpod/pages/home/model/custom_error.dart';
import 'package:flutter_starter_riverpod/pages/home/viewmodel/counter_viewmodel.dart';
import 'package:flutter_starter_riverpod/pages/home/viewmodel/home_screen_state.dart';
import 'package:flutter_starter_riverpod/service_locator.dart';

final homeScreenViewModelProvider =
    StateNotifierProvider<HomeScreenViewModel, HomeScreenState>(
  (ref) => HomeScreenViewModel(ref.read(useCaseUserProvider),
      ref.read(counterViewModelProvider.notifier)),
);

class HomeScreenViewModel extends StateNotifier<HomeScreenState> {
  HomeScreenViewModel(this._useCaseUser, this._counterViewModel)
      : super(
          const HomeScreenState(
            user: null,
            viewState: ViewStateIdle(),
          ),
        );

  final UseCaseUser _useCaseUser;
  final CounterViewModel _counterViewModel;

  Future<void> getUser() async {
    _counterViewModel.increment();

    state = state.copyWith(
      viewState: const ViewStateLoading(),
    );

    try {
      await Future.delayed(const Duration(milliseconds: 200));

      final user = await _useCaseUser.getUser();

      if (user == null) {
        state = state.copyWith(
          error: const CustomError('No User Found!'),
          viewState: const ViewStateError(),
        );
      } else {
        state = state.copyWith(
          viewState: const ViewStateIdle(),
          user: user,
        );
      }
    } catch (e) {
      state = state.copyWith(
        error: CustomError(e.toString()),
        viewState: const ViewStateError(),
      );
    }
  }

  Future<void> saveUser(String id) async {
    _counterViewModel.increment();

    state = state.copyWith(
      viewState: const ViewStateLoading(),
    );

    try {
      await Future.delayed(const Duration(milliseconds: 200));

      final user = await _useCaseUser.saveUser(User(id));

      state = state.copyWith(
        viewState: const ViewStateIdle(),
        user: user,
      );
    } catch (e) {
      state = state.copyWith(
        error: CustomError(e.toString()),
        viewState: const ViewStateError(),
      );
    }
  }
}
