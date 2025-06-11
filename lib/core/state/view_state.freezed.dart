// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ViewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState()';
  }
}

/// @nodoc
class $ViewStateCopyWith<$Res> {
  $ViewStateCopyWith(ViewState _, $Res Function(ViewState) __);
}

/// @nodoc

class ViewStateIdle implements ViewState {
  const ViewStateIdle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ViewStateIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState.idle()';
  }
}

/// @nodoc

class ViewStateLoading implements ViewState {
  const ViewStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ViewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ViewState.loading()';
  }
}

/// @nodoc

class ViewStateError implements ViewState {
  const ViewStateError({this.error});

  final Exception? error;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ViewStateErrorCopyWith<ViewStateError> get copyWith =>
      _$ViewStateErrorCopyWithImpl<ViewStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'ViewState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ViewStateErrorCopyWith<$Res>
    implements $ViewStateCopyWith<$Res> {
  factory $ViewStateErrorCopyWith(
          ViewStateError value, $Res Function(ViewStateError) _then) =
      _$ViewStateErrorCopyWithImpl;
  @useResult
  $Res call({Exception? error});
}

/// @nodoc
class _$ViewStateErrorCopyWithImpl<$Res>
    implements $ViewStateErrorCopyWith<$Res> {
  _$ViewStateErrorCopyWithImpl(this._self, this._then);

  final ViewStateError _self;
  final $Res Function(ViewStateError) _then;

  /// Create a copy of ViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ViewStateError(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

// dart format on
