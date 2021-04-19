// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserInfoStateTearOff {
  const _$UserInfoStateTearOff();

// ignore: unused_element
  _UserInfoState call(
      {dynamic inProgress = false, Object error, UserInfo user}) {
    return _UserInfoState(
      inProgress: inProgress,
      error: error,
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserInfoState = _$UserInfoStateTearOff();

/// @nodoc
mixin _$UserInfoState {
  dynamic get inProgress;
  Object get error;
  UserInfo get user;

  @JsonKey(ignore: true)
  $UserInfoStateCopyWith<UserInfoState> get copyWith;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res>;
  $Res call({dynamic inProgress, Object error, UserInfo user});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  final UserInfoState _value;
  // ignore: unused_field
  final $Res Function(UserInfoState) _then;

  @override
  $Res call({
    Object inProgress = freezed,
    Object error = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      inProgress:
          inProgress == freezed ? _value.inProgress : inProgress as dynamic,
      error: error == freezed ? _value.error : error,
      user: user == freezed ? _value.user : user as UserInfo,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserInfoStateCopyWith<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  factory _$UserInfoStateCopyWith(
          _UserInfoState value, $Res Function(_UserInfoState) then) =
      __$UserInfoStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic inProgress, Object error, UserInfo user});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$UserInfoStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res>
    implements _$UserInfoStateCopyWith<$Res> {
  __$UserInfoStateCopyWithImpl(
      _UserInfoState _value, $Res Function(_UserInfoState) _then)
      : super(_value, (v) => _then(v as _UserInfoState));

  @override
  _UserInfoState get _value => super._value as _UserInfoState;

  @override
  $Res call({
    Object inProgress = freezed,
    Object error = freezed,
    Object user = freezed,
  }) {
    return _then(_UserInfoState(
      inProgress: inProgress == freezed ? _value.inProgress : inProgress,
      error: error == freezed ? _value.error : error,
      user: user == freezed ? _value.user : user as UserInfo,
    ));
  }
}

/// @nodoc
class _$_UserInfoState implements _UserInfoState {
  _$_UserInfoState({this.inProgress = false, this.error, this.user})
      : assert(inProgress != null);

  @JsonKey(defaultValue: false)
  @override
  final dynamic inProgress;
  @override
  final Object error;
  @override
  final UserInfo user;

  @override
  String toString() {
    return 'UserInfoState(inProgress: $inProgress, error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserInfoState &&
            (identical(other.inProgress, inProgress) ||
                const DeepCollectionEquality()
                    .equals(other.inProgress, inProgress)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inProgress) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UserInfoStateCopyWith<_UserInfoState> get copyWith =>
      __$UserInfoStateCopyWithImpl<_UserInfoState>(this, _$identity);
}

abstract class _UserInfoState implements UserInfoState {
  factory _UserInfoState({dynamic inProgress, Object error, UserInfo user}) =
      _$_UserInfoState;

  @override
  dynamic get inProgress;
  @override
  Object get error;
  @override
  UserInfo get user;
  @override
  @JsonKey(ignore: true)
  _$UserInfoStateCopyWith<_UserInfoState> get copyWith;
}
