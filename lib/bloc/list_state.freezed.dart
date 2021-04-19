// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListStateTearOff {
  const _$ListStateTearOff();

// ignore: unused_element
  _ListStateInitial call(
      {dynamic inProgress = false,
      Object error,
      List<User> users,
      bool hasReachedMax = false}) {
    return _ListStateInitial(
      inProgress: inProgress,
      error: error,
      users: users,
      hasReachedMax: hasReachedMax,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListState = _$ListStateTearOff();

/// @nodoc
mixin _$ListState {
  dynamic get inProgress;
  Object get error;
  List<User> get users;
  bool get hasReachedMax;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic inProgress, Object error, List<User> users, bool hasReachedMax});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object inProgress = freezed,
    Object error = freezed,
    Object users = freezed,
    Object hasReachedMax = freezed,
  }) {
    return _then(_value.copyWith(
      inProgress:
          inProgress == freezed ? _value.inProgress : inProgress as dynamic,
      error: error == freezed ? _value.error : error,
      users: users == freezed ? _value.users : users as List<User>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax as bool,
    ));
  }
}

/// @nodoc
abstract class _$ListStateInitialCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory _$ListStateInitialCopyWith(
          _ListStateInitial value, $Res Function(_ListStateInitial) then) =
      __$ListStateInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic inProgress, Object error, List<User> users, bool hasReachedMax});
}

/// @nodoc
class __$ListStateInitialCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res>
    implements _$ListStateInitialCopyWith<$Res> {
  __$ListStateInitialCopyWithImpl(
      _ListStateInitial _value, $Res Function(_ListStateInitial) _then)
      : super(_value, (v) => _then(v as _ListStateInitial));

  @override
  _ListStateInitial get _value => super._value as _ListStateInitial;

  @override
  $Res call({
    Object inProgress = freezed,
    Object error = freezed,
    Object users = freezed,
    Object hasReachedMax = freezed,
  }) {
    return _then(_ListStateInitial(
      inProgress: inProgress == freezed ? _value.inProgress : inProgress,
      error: error == freezed ? _value.error : error,
      users: users == freezed ? _value.users : users as List<User>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax as bool,
    ));
  }
}

/// @nodoc
class _$_ListStateInitial implements _ListStateInitial {
  _$_ListStateInitial(
      {this.inProgress = false,
      this.error,
      this.users,
      this.hasReachedMax = false})
      : assert(inProgress != null),
        assert(hasReachedMax != null);

  @JsonKey(defaultValue: false)
  @override
  final dynamic inProgress;
  @override
  final Object error;
  @override
  final List<User> users;
  @JsonKey(defaultValue: false)
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ListState(inProgress: $inProgress, error: $error, users: $users, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListStateInitial &&
            (identical(other.inProgress, inProgress) ||
                const DeepCollectionEquality()
                    .equals(other.inProgress, inProgress)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inProgress) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(hasReachedMax);

  @JsonKey(ignore: true)
  @override
  _$ListStateInitialCopyWith<_ListStateInitial> get copyWith =>
      __$ListStateInitialCopyWithImpl<_ListStateInitial>(this, _$identity);
}

abstract class _ListStateInitial implements ListState {
  factory _ListStateInitial(
      {dynamic inProgress,
      Object error,
      List<User> users,
      bool hasReachedMax}) = _$_ListStateInitial;

  @override
  dynamic get inProgress;
  @override
  Object get error;
  @override
  List<User> get users;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$ListStateInitialCopyWith<_ListStateInitial> get copyWith;
}
