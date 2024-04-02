import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState.idle() = ViewStateIdle;

  const factory ViewState.loading() = ViewStateLoading;

  const factory ViewState.error({Exception? error}) = ViewStateError;
}
