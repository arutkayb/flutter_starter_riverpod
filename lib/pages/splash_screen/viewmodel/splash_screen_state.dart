import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_starter_riverpod/core/state/view_state.dart';

part 'splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required ViewState viewState,
  }) = _SplashScreenState;
}
