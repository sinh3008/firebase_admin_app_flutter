// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telescope_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TelescopeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTelescopes,
    required TResult Function(Telescope telescope) addTelescope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTelescopes,
    TResult? Function(Telescope telescope)? addTelescope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTelescopes,
    TResult Function(Telescope telescope)? addTelescope,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTelescopes value) getAllTelescopes,
    required TResult Function(_AddTelescope value) addTelescope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult? Function(_AddTelescope value)? addTelescope,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult Function(_AddTelescope value)? addTelescope,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelescopeEventCopyWith<$Res> {
  factory $TelescopeEventCopyWith(
          TelescopeEvent value, $Res Function(TelescopeEvent) then) =
      _$TelescopeEventCopyWithImpl<$Res, TelescopeEvent>;
}

/// @nodoc
class _$TelescopeEventCopyWithImpl<$Res, $Val extends TelescopeEvent>
    implements $TelescopeEventCopyWith<$Res> {
  _$TelescopeEventCopyWithImpl(this._value, this._then);

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
    extends _$TelescopeEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'TelescopeEvent.started()';
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
    required TResult Function() getAllTelescopes,
    required TResult Function(Telescope telescope) addTelescope,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTelescopes,
    TResult? Function(Telescope telescope)? addTelescope,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTelescopes,
    TResult Function(Telescope telescope)? addTelescope,
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
    required TResult Function(_GetAllTelescopes value) getAllTelescopes,
    required TResult Function(_AddTelescope value) addTelescope,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult? Function(_AddTelescope value)? addTelescope,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult Function(_AddTelescope value)? addTelescope,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TelescopeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllTelescopesImplCopyWith<$Res> {
  factory _$$GetAllTelescopesImplCopyWith(_$GetAllTelescopesImpl value,
          $Res Function(_$GetAllTelescopesImpl) then) =
      __$$GetAllTelescopesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTelescopesImplCopyWithImpl<$Res>
    extends _$TelescopeEventCopyWithImpl<$Res, _$GetAllTelescopesImpl>
    implements _$$GetAllTelescopesImplCopyWith<$Res> {
  __$$GetAllTelescopesImplCopyWithImpl(_$GetAllTelescopesImpl _value,
      $Res Function(_$GetAllTelescopesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTelescopesImpl implements _GetAllTelescopes {
  const _$GetAllTelescopesImpl();

  @override
  String toString() {
    return 'TelescopeEvent.getAllTelescopes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllTelescopesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTelescopes,
    required TResult Function(Telescope telescope) addTelescope,
  }) {
    return getAllTelescopes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTelescopes,
    TResult? Function(Telescope telescope)? addTelescope,
  }) {
    return getAllTelescopes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTelescopes,
    TResult Function(Telescope telescope)? addTelescope,
    required TResult orElse(),
  }) {
    if (getAllTelescopes != null) {
      return getAllTelescopes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTelescopes value) getAllTelescopes,
    required TResult Function(_AddTelescope value) addTelescope,
  }) {
    return getAllTelescopes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult? Function(_AddTelescope value)? addTelescope,
  }) {
    return getAllTelescopes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult Function(_AddTelescope value)? addTelescope,
    required TResult orElse(),
  }) {
    if (getAllTelescopes != null) {
      return getAllTelescopes(this);
    }
    return orElse();
  }
}

abstract class _GetAllTelescopes implements TelescopeEvent {
  const factory _GetAllTelescopes() = _$GetAllTelescopesImpl;
}

/// @nodoc
abstract class _$$AddTelescopeImplCopyWith<$Res> {
  factory _$$AddTelescopeImplCopyWith(
          _$AddTelescopeImpl value, $Res Function(_$AddTelescopeImpl) then) =
      __$$AddTelescopeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Telescope telescope});

  $TelescopeCopyWith<$Res> get telescope;
}

/// @nodoc
class __$$AddTelescopeImplCopyWithImpl<$Res>
    extends _$TelescopeEventCopyWithImpl<$Res, _$AddTelescopeImpl>
    implements _$$AddTelescopeImplCopyWith<$Res> {
  __$$AddTelescopeImplCopyWithImpl(
      _$AddTelescopeImpl _value, $Res Function(_$AddTelescopeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? telescope = null,
  }) {
    return _then(_$AddTelescopeImpl(
      null == telescope
          ? _value.telescope
          : telescope // ignore: cast_nullable_to_non_nullable
              as Telescope,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TelescopeCopyWith<$Res> get telescope {
    return $TelescopeCopyWith<$Res>(_value.telescope, (value) {
      return _then(_value.copyWith(telescope: value));
    });
  }
}

/// @nodoc

class _$AddTelescopeImpl implements _AddTelescope {
  const _$AddTelescopeImpl(this.telescope);

  @override
  final Telescope telescope;

  @override
  String toString() {
    return 'TelescopeEvent.addTelescope(telescope: $telescope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTelescopeImpl &&
            (identical(other.telescope, telescope) ||
                other.telescope == telescope));
  }

  @override
  int get hashCode => Object.hash(runtimeType, telescope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTelescopeImplCopyWith<_$AddTelescopeImpl> get copyWith =>
      __$$AddTelescopeImplCopyWithImpl<_$AddTelescopeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllTelescopes,
    required TResult Function(Telescope telescope) addTelescope,
  }) {
    return addTelescope(telescope);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllTelescopes,
    TResult? Function(Telescope telescope)? addTelescope,
  }) {
    return addTelescope?.call(telescope);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllTelescopes,
    TResult Function(Telescope telescope)? addTelescope,
    required TResult orElse(),
  }) {
    if (addTelescope != null) {
      return addTelescope(telescope);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllTelescopes value) getAllTelescopes,
    required TResult Function(_AddTelescope value) addTelescope,
  }) {
    return addTelescope(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult? Function(_AddTelescope value)? addTelescope,
  }) {
    return addTelescope?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllTelescopes value)? getAllTelescopes,
    TResult Function(_AddTelescope value)? addTelescope,
    required TResult orElse(),
  }) {
    if (addTelescope != null) {
      return addTelescope(this);
    }
    return orElse();
  }
}

abstract class _AddTelescope implements TelescopeEvent {
  const factory _AddTelescope(final Telescope telescope) = _$AddTelescopeImpl;

  Telescope get telescope;
  @JsonKey(ignore: true)
  _$$AddTelescopeImplCopyWith<_$AddTelescopeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TelescopeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelescopeStateCopyWith<$Res> {
  factory $TelescopeStateCopyWith(
          TelescopeState value, $Res Function(TelescopeState) then) =
      _$TelescopeStateCopyWithImpl<$Res, TelescopeState>;
}

/// @nodoc
class _$TelescopeStateCopyWithImpl<$Res, $Val extends TelescopeState>
    implements $TelescopeStateCopyWith<$Res> {
  _$TelescopeStateCopyWithImpl(this._value, this._then);

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
    extends _$TelescopeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TelescopeState.initial()';
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
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
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
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TelescopeState {
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
    extends _$TelescopeStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TelescopeState.loading()';
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
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
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
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TelescopeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingAllTelescopesImplCopyWith<$Res> {
  factory _$$LoadingAllTelescopesImplCopyWith(_$LoadingAllTelescopesImpl value,
          $Res Function(_$LoadingAllTelescopesImpl) then) =
      __$$LoadingAllTelescopesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Telescope> list});
}

/// @nodoc
class __$$LoadingAllTelescopesImplCopyWithImpl<$Res>
    extends _$TelescopeStateCopyWithImpl<$Res, _$LoadingAllTelescopesImpl>
    implements _$$LoadingAllTelescopesImplCopyWith<$Res> {
  __$$LoadingAllTelescopesImplCopyWithImpl(_$LoadingAllTelescopesImpl _value,
      $Res Function(_$LoadingAllTelescopesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$LoadingAllTelescopesImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Telescope>,
    ));
  }
}

/// @nodoc

class _$LoadingAllTelescopesImpl implements _LoadingAllTelescopes {
  const _$LoadingAllTelescopesImpl(final List<Telescope> list) : _list = list;

  final List<Telescope> _list;
  @override
  List<Telescope> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'TelescopeState.loadingAllTelescopes(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAllTelescopesImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAllTelescopesImplCopyWith<_$LoadingAllTelescopesImpl>
      get copyWith =>
          __$$LoadingAllTelescopesImplCopyWithImpl<_$LoadingAllTelescopesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) {
    return loadingAllTelescopes(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) {
    return loadingAllTelescopes?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadingAllTelescopes != null) {
      return loadingAllTelescopes(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loadingAllTelescopes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loadingAllTelescopes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingAllTelescopes != null) {
      return loadingAllTelescopes(this);
    }
    return orElse();
  }
}

abstract class _LoadingAllTelescopes implements TelescopeState {
  const factory _LoadingAllTelescopes(final List<Telescope> list) =
      _$LoadingAllTelescopesImpl;

  List<Telescope> get list;
  @JsonKey(ignore: true)
  _$$LoadingAllTelescopesImplCopyWith<_$LoadingAllTelescopesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTelescopeSuccessImplCopyWith<$Res> {
  factory _$$AddTelescopeSuccessImplCopyWith(_$AddTelescopeSuccessImpl value,
          $Res Function(_$AddTelescopeSuccessImpl) then) =
      __$$AddTelescopeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddTelescopeSuccessImplCopyWithImpl<$Res>
    extends _$TelescopeStateCopyWithImpl<$Res, _$AddTelescopeSuccessImpl>
    implements _$$AddTelescopeSuccessImplCopyWith<$Res> {
  __$$AddTelescopeSuccessImplCopyWithImpl(_$AddTelescopeSuccessImpl _value,
      $Res Function(_$AddTelescopeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddTelescopeSuccessImpl implements _AddTelescopeSuccess {
  const _$AddTelescopeSuccessImpl();

  @override
  String toString() {
    return 'TelescopeState.addTelescopeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTelescopeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) {
    return addTelescopeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) {
    return addTelescopeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addTelescopeSuccess != null) {
      return addTelescopeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) {
    return addTelescopeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return addTelescopeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addTelescopeSuccess != null) {
      return addTelescopeSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddTelescopeSuccess implements TelescopeState {
  const factory _AddTelescopeSuccess() = _$AddTelescopeSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TelescopeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'TelescopeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Telescope> list) loadingAllTelescopes,
    required TResult Function() addTelescopeSuccess,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Telescope> list)? loadingAllTelescopes,
    TResult? Function()? addTelescopeSuccess,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Telescope> list)? loadingAllTelescopes,
    TResult Function()? addTelescopeSuccess,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingAllTelescopes value) loadingAllTelescopes,
    required TResult Function(_AddTelescopeSuccess value) addTelescopeSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult? Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingAllTelescopes value)? loadingAllTelescopes,
    TResult Function(_AddTelescopeSuccess value)? addTelescopeSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TelescopeState {
  const factory _Error() = _$ErrorImpl;
}
