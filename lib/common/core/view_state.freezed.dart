// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateIdle value) idle,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateIdle value)? idle,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateIdle value)? idle,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res, ViewState>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res, $Val extends ViewState>
    implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewStateIdleImplCopyWith<$Res> {
  factory _$$ViewStateIdleImplCopyWith(
          _$ViewStateIdleImpl value, $Res Function(_$ViewStateIdleImpl) then) =
      __$$ViewStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateIdleImplCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateIdleImpl>
    implements _$$ViewStateIdleImplCopyWith<$Res> {
  __$$ViewStateIdleImplCopyWithImpl(
      _$ViewStateIdleImpl _value, $Res Function(_$ViewStateIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateIdleImpl implements ViewStateIdle {
  const _$ViewStateIdleImpl();

  @override
  String toString() {
    return 'ViewState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateIdle value) idle,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateIdle value)? idle,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateIdle value)? idle,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ViewStateIdle implements ViewState {
  const factory ViewStateIdle() = _$ViewStateIdleImpl;
}

/// @nodoc
abstract class _$$ViewStateLoadingImplCopyWith<$Res> {
  factory _$$ViewStateLoadingImplCopyWith(_$ViewStateLoadingImpl value,
          $Res Function(_$ViewStateLoadingImpl) then) =
      __$$ViewStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateLoadingImplCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateLoadingImpl>
    implements _$$ViewStateLoadingImplCopyWith<$Res> {
  __$$ViewStateLoadingImplCopyWithImpl(_$ViewStateLoadingImpl _value,
      $Res Function(_$ViewStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoadingImpl implements ViewStateLoading {
  const _$ViewStateLoadingImpl();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateIdle value) idle,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateIdle value)? idle,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateIdle value)? idle,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading implements ViewState {
  const factory ViewStateLoading() = _$ViewStateLoadingImpl;
}

/// @nodoc
abstract class _$$ViewStateErrorImplCopyWith<$Res> {
  factory _$$ViewStateErrorImplCopyWith(_$ViewStateErrorImpl value,
          $Res Function(_$ViewStateErrorImpl) then) =
      __$$ViewStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? error});
}

/// @nodoc
class __$$ViewStateErrorImplCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateErrorImpl>
    implements _$$ViewStateErrorImplCopyWith<$Res> {
  __$$ViewStateErrorImplCopyWithImpl(
      _$ViewStateErrorImpl _value, $Res Function(_$ViewStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ViewStateErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ViewStateErrorImpl implements ViewStateError {
  const _$ViewStateErrorImpl({this.error});

  @override
  final Exception? error;

  @override
  String toString() {
    return 'ViewState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateErrorImplCopyWith<_$ViewStateErrorImpl> get copyWith =>
      __$$ViewStateErrorImplCopyWithImpl<_$ViewStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateIdle value) idle,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateIdle value)? idle,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateIdle value)? idle,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError implements ViewState {
  const factory ViewStateError({final Exception? error}) = _$ViewStateErrorImpl;

  Exception? get error;
  @JsonKey(ignore: true)
  _$$ViewStateErrorImplCopyWith<_$ViewStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
