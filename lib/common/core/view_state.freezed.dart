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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateError value) error,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateError value)? error,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateError value)? error,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateLoaded value)? loaded,
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
abstract class _$$ViewStateErrorCopyWith<$Res> {
  factory _$$ViewStateErrorCopyWith(
          _$ViewStateError value, $Res Function(_$ViewStateError) then) =
      __$$ViewStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateErrorCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateError>
    implements _$$ViewStateErrorCopyWith<$Res> {
  __$$ViewStateErrorCopyWithImpl(
      _$ViewStateError _value, $Res Function(_$ViewStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateError implements ViewStateError {
  const _$ViewStateError();

  @override
  String toString() {
    return 'ViewState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateError value) error,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateError value)? error,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateError value)? error,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError implements ViewState {
  const factory ViewStateError() = _$ViewStateError;
}

/// @nodoc
abstract class _$$ViewStateLoadingCopyWith<$Res> {
  factory _$$ViewStateLoadingCopyWith(
          _$ViewStateLoading value, $Res Function(_$ViewStateLoading) then) =
      __$$ViewStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateLoadingCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateLoading>
    implements _$$ViewStateLoadingCopyWith<$Res> {
  __$$ViewStateLoadingCopyWithImpl(
      _$ViewStateLoading _value, $Res Function(_$ViewStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoading implements ViewStateLoading {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(ViewStateError value) error,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateError value)? error,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateError value)? error,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading implements ViewState {
  const factory ViewStateLoading() = _$ViewStateLoading;
}

/// @nodoc
abstract class _$$ViewStateLoadedCopyWith<$Res> {
  factory _$$ViewStateLoadedCopyWith(
          _$ViewStateLoaded value, $Res Function(_$ViewStateLoaded) then) =
      __$$ViewStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateLoadedCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$ViewStateLoaded>
    implements _$$ViewStateLoadedCopyWith<$Res> {
  __$$ViewStateLoadedCopyWithImpl(
      _$ViewStateLoaded _value, $Res Function(_$ViewStateLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoaded implements ViewStateLoaded {
  const _$ViewStateLoaded();

  @override
  String toString() {
    return 'ViewState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateError value) error,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewStateError value)? error,
    TResult? Function(ViewStateLoading value)? loading,
    TResult? Function(ViewStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateError value)? error,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoaded implements ViewState {
  const factory ViewStateLoaded() = _$ViewStateLoaded;
}
