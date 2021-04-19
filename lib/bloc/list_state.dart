import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/user.dart';

part 'list_state.freezed.dart';

@freezed
abstract class ListState with _$ListState {
  factory ListState({
    @Default(false) inProgress,
    Object error,
    List<User> users,
    @Default(false) bool hasReachedMax,
  }) = _ListStateInitial;
}
