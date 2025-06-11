// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashScreenState {
  ViewState get viewState;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashScreenStateCopyWith<SplashScreenState> get copyWith =>
      _$SplashScreenStateCopyWithImpl<SplashScreenState>(
          this as SplashScreenState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashScreenState &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState);

  @override
  String toString() {
    return 'SplashScreenState(viewState: $viewState)';
  }
}

/// @nodoc
abstract mixin class $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenStateCopyWith(
          SplashScreenState value, $Res Function(SplashScreenState) _then) =
      _$SplashScreenStateCopyWithImpl;
  @useResult
  $Res call({ViewState viewState});

  $ViewStateCopyWith<$Res> get viewState;
}

/// @nodoc
class _$SplashScreenStateCopyWithImpl<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  _$SplashScreenStateCopyWithImpl(this._self, this._then);

  final SplashScreenState _self;
  final $Res Function(SplashScreenState) _then;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
  }) {
    return _then(_self.copyWith(
      viewState: null == viewState
          ? _self.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
    ));
  }

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<$Res> get viewState {
    return $ViewStateCopyWith<$Res>(_self.viewState, (value) {
      return _then(_self.copyWith(viewState: value));
    });
  }
}

/// @nodoc

class _SplashScreenState implements SplashScreenState {
  const _SplashScreenState({required this.viewState});

  @override
  final ViewState viewState;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SplashScreenStateCopyWith<_SplashScreenState> get copyWith =>
      __$SplashScreenStateCopyWithImpl<_SplashScreenState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashScreenState &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState);

  @override
  String toString() {
    return 'SplashScreenState(viewState: $viewState)';
  }
}

/// @nodoc
abstract mixin class _$SplashScreenStateCopyWith<$Res>
    implements $SplashScreenStateCopyWith<$Res> {
  factory _$SplashScreenStateCopyWith(
          _SplashScreenState value, $Res Function(_SplashScreenState) _then) =
      __$SplashScreenStateCopyWithImpl;
  @override
  @useResult
  $Res call({ViewState viewState});

  @override
  $ViewStateCopyWith<$Res> get viewState;
}

/// @nodoc
class __$SplashScreenStateCopyWithImpl<$Res>
    implements _$SplashScreenStateCopyWith<$Res> {
  __$SplashScreenStateCopyWithImpl(this._self, this._then);

  final _SplashScreenState _self;
  final $Res Function(_SplashScreenState) _then;

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewState = null,
  }) {
    return _then(_SplashScreenState(
      viewState: null == viewState
          ? _self.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
    ));
  }

  /// Create a copy of SplashScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewStateCopyWith<$Res> get viewState {
    return $ViewStateCopyWith<$Res>(_self.viewState, (value) {
      return _then(_self.copyWith(viewState: value));
    });
  }
}

// dart format on
