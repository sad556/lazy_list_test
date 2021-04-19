import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/user_info.dart';

part 'user_info_state.freezed.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  factory UserInfoState({
    @Default(false) inProgress,
    Object error,
    UserInfo user,
  }) = _UserInfoState;
}