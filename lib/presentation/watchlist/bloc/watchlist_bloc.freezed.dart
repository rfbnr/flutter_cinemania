// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWatchlist,
    required TResult Function() clearWatchlist,
    required TResult Function(WatchlistResponseModel resultWatchlist)
        addToWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllWatchlist,
    TResult? Function()? clearWatchlist,
    TResult? Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWatchlist,
    TResult Function()? clearWatchlist,
    TResult Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllWatchlist value) getAllWatchlist,
    required TResult Function(_ClearWatchlist value) clearWatchlist,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult? Function(_ClearWatchlist value)? clearWatchlist,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult Function(_ClearWatchlist value)? clearWatchlist,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistEventCopyWith<$Res> {
  factory $WatchlistEventCopyWith(
          WatchlistEvent value, $Res Function(WatchlistEvent) then) =
      _$WatchlistEventCopyWithImpl<$Res, WatchlistEvent>;
}

/// @nodoc
class _$WatchlistEventCopyWithImpl<$Res, $Val extends WatchlistEvent>
    implements $WatchlistEventCopyWith<$Res> {
  _$WatchlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WatchlistEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWatchlist,
    required TResult Function() clearWatchlist,
    required TResult Function(WatchlistResponseModel resultWatchlist)
        addToWatchlist,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllWatchlist,
    TResult? Function()? clearWatchlist,
    TResult? Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWatchlist,
    TResult Function()? clearWatchlist,
    TResult Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllWatchlist value) getAllWatchlist,
    required TResult Function(_ClearWatchlist value) clearWatchlist,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult? Function(_ClearWatchlist value)? clearWatchlist,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult Function(_ClearWatchlist value)? clearWatchlist,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WatchlistEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllWatchlistImplCopyWith<$Res> {
  factory _$$GetAllWatchlistImplCopyWith(_$GetAllWatchlistImpl value,
          $Res Function(_$GetAllWatchlistImpl) then) =
      __$$GetAllWatchlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllWatchlistImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$GetAllWatchlistImpl>
    implements _$$GetAllWatchlistImplCopyWith<$Res> {
  __$$GetAllWatchlistImplCopyWithImpl(
      _$GetAllWatchlistImpl _value, $Res Function(_$GetAllWatchlistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllWatchlistImpl implements _GetAllWatchlist {
  const _$GetAllWatchlistImpl();

  @override
  String toString() {
    return 'WatchlistEvent.getAllWatchlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllWatchlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWatchlist,
    required TResult Function() clearWatchlist,
    required TResult Function(WatchlistResponseModel resultWatchlist)
        addToWatchlist,
  }) {
    return getAllWatchlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllWatchlist,
    TResult? Function()? clearWatchlist,
    TResult? Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
  }) {
    return getAllWatchlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWatchlist,
    TResult Function()? clearWatchlist,
    TResult Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (getAllWatchlist != null) {
      return getAllWatchlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllWatchlist value) getAllWatchlist,
    required TResult Function(_ClearWatchlist value) clearWatchlist,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
  }) {
    return getAllWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult? Function(_ClearWatchlist value)? clearWatchlist,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
  }) {
    return getAllWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult Function(_ClearWatchlist value)? clearWatchlist,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (getAllWatchlist != null) {
      return getAllWatchlist(this);
    }
    return orElse();
  }
}

abstract class _GetAllWatchlist implements WatchlistEvent {
  const factory _GetAllWatchlist() = _$GetAllWatchlistImpl;
}

/// @nodoc
abstract class _$$ClearWatchlistImplCopyWith<$Res> {
  factory _$$ClearWatchlistImplCopyWith(_$ClearWatchlistImpl value,
          $Res Function(_$ClearWatchlistImpl) then) =
      __$$ClearWatchlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearWatchlistImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$ClearWatchlistImpl>
    implements _$$ClearWatchlistImplCopyWith<$Res> {
  __$$ClearWatchlistImplCopyWithImpl(
      _$ClearWatchlistImpl _value, $Res Function(_$ClearWatchlistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearWatchlistImpl implements _ClearWatchlist {
  const _$ClearWatchlistImpl();

  @override
  String toString() {
    return 'WatchlistEvent.clearWatchlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearWatchlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWatchlist,
    required TResult Function() clearWatchlist,
    required TResult Function(WatchlistResponseModel resultWatchlist)
        addToWatchlist,
  }) {
    return clearWatchlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllWatchlist,
    TResult? Function()? clearWatchlist,
    TResult? Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
  }) {
    return clearWatchlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWatchlist,
    TResult Function()? clearWatchlist,
    TResult Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (clearWatchlist != null) {
      return clearWatchlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllWatchlist value) getAllWatchlist,
    required TResult Function(_ClearWatchlist value) clearWatchlist,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
  }) {
    return clearWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult? Function(_ClearWatchlist value)? clearWatchlist,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
  }) {
    return clearWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult Function(_ClearWatchlist value)? clearWatchlist,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (clearWatchlist != null) {
      return clearWatchlist(this);
    }
    return orElse();
  }
}

abstract class _ClearWatchlist implements WatchlistEvent {
  const factory _ClearWatchlist() = _$ClearWatchlistImpl;
}

/// @nodoc
abstract class _$$AddToWatchlistImplCopyWith<$Res> {
  factory _$$AddToWatchlistImplCopyWith(_$AddToWatchlistImpl value,
          $Res Function(_$AddToWatchlistImpl) then) =
      __$$AddToWatchlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WatchlistResponseModel resultWatchlist});
}

/// @nodoc
class __$$AddToWatchlistImplCopyWithImpl<$Res>
    extends _$WatchlistEventCopyWithImpl<$Res, _$AddToWatchlistImpl>
    implements _$$AddToWatchlistImplCopyWith<$Res> {
  __$$AddToWatchlistImplCopyWithImpl(
      _$AddToWatchlistImpl _value, $Res Function(_$AddToWatchlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultWatchlist = null,
  }) {
    return _then(_$AddToWatchlistImpl(
      null == resultWatchlist
          ? _value.resultWatchlist
          : resultWatchlist // ignore: cast_nullable_to_non_nullable
              as WatchlistResponseModel,
    ));
  }
}

/// @nodoc

class _$AddToWatchlistImpl implements _AddToWatchlist {
  const _$AddToWatchlistImpl(this.resultWatchlist);

  @override
  final WatchlistResponseModel resultWatchlist;

  @override
  String toString() {
    return 'WatchlistEvent.addToWatchlist(resultWatchlist: $resultWatchlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWatchlistImpl &&
            (identical(other.resultWatchlist, resultWatchlist) ||
                other.resultWatchlist == resultWatchlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultWatchlist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToWatchlistImplCopyWith<_$AddToWatchlistImpl> get copyWith =>
      __$$AddToWatchlistImplCopyWithImpl<_$AddToWatchlistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllWatchlist,
    required TResult Function() clearWatchlist,
    required TResult Function(WatchlistResponseModel resultWatchlist)
        addToWatchlist,
  }) {
    return addToWatchlist(resultWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllWatchlist,
    TResult? Function()? clearWatchlist,
    TResult? Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
  }) {
    return addToWatchlist?.call(resultWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllWatchlist,
    TResult Function()? clearWatchlist,
    TResult Function(WatchlistResponseModel resultWatchlist)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (addToWatchlist != null) {
      return addToWatchlist(resultWatchlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllWatchlist value) getAllWatchlist,
    required TResult Function(_ClearWatchlist value) clearWatchlist,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
  }) {
    return addToWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult? Function(_ClearWatchlist value)? clearWatchlist,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
  }) {
    return addToWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllWatchlist value)? getAllWatchlist,
    TResult Function(_ClearWatchlist value)? clearWatchlist,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    required TResult orElse(),
  }) {
    if (addToWatchlist != null) {
      return addToWatchlist(this);
    }
    return orElse();
  }
}

abstract class _AddToWatchlist implements WatchlistEvent {
  const factory _AddToWatchlist(final WatchlistResponseModel resultWatchlist) =
      _$AddToWatchlistImpl;

  WatchlistResponseModel get resultWatchlist;
  @JsonKey(ignore: true)
  _$$AddToWatchlistImplCopyWith<_$AddToWatchlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WatchlistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WatchlistResponseModel> resultWatchlist)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(
          WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res, WatchlistState>;
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res, $Val extends WatchlistState>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WatchlistState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WatchlistResponseModel> resultWatchlist)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WatchlistState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WatchlistState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WatchlistResponseModel> resultWatchlist)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WatchlistState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WatchlistResponseModel> resultWatchlist});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultWatchlist = null,
  }) {
    return _then(_$SuccessImpl(
      null == resultWatchlist
          ? _value._resultWatchlist
          : resultWatchlist // ignore: cast_nullable_to_non_nullable
              as List<WatchlistResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<WatchlistResponseModel> resultWatchlist)
      : _resultWatchlist = resultWatchlist;

  final List<WatchlistResponseModel> _resultWatchlist;
  @override
  List<WatchlistResponseModel> get resultWatchlist {
    if (_resultWatchlist is EqualUnmodifiableListView) return _resultWatchlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultWatchlist);
  }

  @override
  String toString() {
    return 'WatchlistState.success(resultWatchlist: $resultWatchlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._resultWatchlist, _resultWatchlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_resultWatchlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WatchlistResponseModel> resultWatchlist)
        success,
    required TResult Function(String message) error,
  }) {
    return success(resultWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(resultWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(resultWatchlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements WatchlistState {
  const factory _Success(final List<WatchlistResponseModel> resultWatchlist) =
      _$SuccessImpl;

  List<WatchlistResponseModel> get resultWatchlist;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WatchlistState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WatchlistResponseModel> resultWatchlist)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WatchlistResponseModel> resultWatchlist)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WatchlistState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
