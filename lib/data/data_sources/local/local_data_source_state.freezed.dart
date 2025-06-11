// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_data_source_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalDataSourceState {
  Map<String, dynamic> get data;
  bool get isLoading;

  /// Create a copy of LocalDataSourceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocalDataSourceStateCopyWith<LocalDataSourceState> get copyWith =>
      _$LocalDataSourceStateCopyWithImpl<LocalDataSourceState>(
          this as LocalDataSourceState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalDataSourceState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), isLoading);

  @override
  String toString() {
    return 'LocalDataSourceState(data: $data, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $LocalDataSourceStateCopyWith<$Res> {
  factory $LocalDataSourceStateCopyWith(LocalDataSourceState value,
          $Res Function(LocalDataSourceState) _then) =
      _$LocalDataSourceStateCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> data, bool isLoading});
}

/// @nodoc
class _$LocalDataSourceStateCopyWithImpl<$Res>
    implements $LocalDataSourceStateCopyWith<$Res> {
  _$LocalDataSourceStateCopyWithImpl(this._self, this._then);

  final LocalDataSourceState _self;
  final $Res Function(LocalDataSourceState) _then;

  /// Create a copy of LocalDataSourceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _LocalDataSourceState implements LocalDataSourceState {
  const _LocalDataSourceState(
      {final Map<String, dynamic> data = const {}, this.isLoading = false})
      : _data = data;

  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;

  /// Create a copy of LocalDataSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocalDataSourceStateCopyWith<_LocalDataSourceState> get copyWith =>
      __$LocalDataSourceStateCopyWithImpl<_LocalDataSourceState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalDataSourceState &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), isLoading);

  @override
  String toString() {
    return 'LocalDataSourceState(data: $data, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$LocalDataSourceStateCopyWith<$Res>
    implements $LocalDataSourceStateCopyWith<$Res> {
  factory _$LocalDataSourceStateCopyWith(_LocalDataSourceState value,
          $Res Function(_LocalDataSourceState) _then) =
      __$LocalDataSourceStateCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic> data, bool isLoading});
}

/// @nodoc
class __$LocalDataSourceStateCopyWithImpl<$Res>
    implements _$LocalDataSourceStateCopyWith<$Res> {
  __$LocalDataSourceStateCopyWithImpl(this._self, this._then);

  final _LocalDataSourceState _self;
  final $Res Function(_LocalDataSourceState) _then;

  /// Create a copy of LocalDataSourceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? isLoading = null,
  }) {
    return _then(_LocalDataSourceState(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
