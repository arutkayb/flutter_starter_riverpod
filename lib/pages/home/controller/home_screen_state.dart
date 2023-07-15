import 'package:flutter_starter_riverpod/common/core/view_state.dart';
import 'package:flutter_starter_riverpod/data/repository/models/user.dart';
import 'package:flutter_starter_riverpod/pages/home/model/custom_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required User? user,
    required ViewState viewState,
    CustomError? error,
  }) = _HomeScreenState;
}
