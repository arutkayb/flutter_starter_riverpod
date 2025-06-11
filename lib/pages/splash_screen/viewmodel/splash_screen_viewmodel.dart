import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/core/state/view_state.dart';
import 'package:flutter_starter_riverpod/data/data_sources/local/local_data_source.dart';
import 'package:flutter_starter_riverpod/pages/splash_screen/viewmodel/splash_screen_state.dart';

final splashScreenViewmodelProvider =
    StateNotifierProvider.autoDispose<SplashScreenViewmodel, SplashScreenState>(
  (ref) => SplashScreenViewmodel(ref.read(localDataSourceProvider.notifier)),
);

class SplashScreenViewmodel extends StateNotifier<SplashScreenState> {
  SplashScreenViewmodel(this._localDataSource)
      : super(
          const SplashScreenState(
            viewState: ViewStateLoading(),
          ),
        );

  final LocalDataSource _localDataSource;

  // Initialize important app resources here during the splash screen
  Future<void> initialize() async {
    state = state.copyWith(viewState: ViewStateLoading());

    await Future.delayed(Duration(seconds: 2));

    await _localDataSource.initialize();

    state = state.copyWith(viewState: ViewStateIdle());
  }
}
