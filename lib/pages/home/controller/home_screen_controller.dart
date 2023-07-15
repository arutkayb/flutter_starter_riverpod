import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/common/core/view_state.dart';
import 'package:flutter_starter_riverpod/data/repository/models/user.dart';
import 'package:flutter_starter_riverpod/data/repository/use_cases/user/i_use_case_user.dart';
import 'package:flutter_starter_riverpod/pages/home/controller/counter_controller.dart';
import 'package:flutter_starter_riverpod/pages/home/controller/home_screen_state.dart';
import 'package:flutter_starter_riverpod/pages/home/model/custom_error.dart';
import 'package:flutter_starter_riverpod/service_locator.dart';

final homeScreenControllerProvider =
    StateNotifierProvider<HomeScreenController, HomeScreenState>(
  (ref) => HomeScreenController(ref.read(useCaseUserProvider),
      ref.read(counterControllerProvider.notifier)),
);

class HomeScreenController extends StateNotifier<HomeScreenState> {
  HomeScreenController(this._useCaseUser, this._counterController)
      : super(
          const HomeScreenState(
            user: null,
            viewState: ViewStateLoaded(),
          ),
        );

  final IUseCaseUser _useCaseUser;
  final CounterController _counterController;

  Future<void> getUser() async {
    _counterController.increment();

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
          viewState: const ViewStateLoaded(),
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
    _counterController.increment();

    state = state.copyWith(
      viewState: const ViewStateLoading(),
    );

    try {
      await Future.delayed(const Duration(milliseconds: 200));

      final user = await _useCaseUser.saveUser(User(id));

      state = state.copyWith(
        viewState: const ViewStateLoaded(),
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
