import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';


// sealed provides a compile-time guarantee that the type hierarchy is closed. This allows the compiler to:
// Know exactly which cases exist
// Verify that pattern matching is exhaustive
// Catch missing cases at compile time instead of runtime
@freezed
sealed class ViewState with _$ViewState {
  const factory ViewState.idle() = ViewStateIdle;

  const factory ViewState.loading() = ViewStateLoading;

  const factory ViewState.error({Exception? error}) = ViewStateError;
}
