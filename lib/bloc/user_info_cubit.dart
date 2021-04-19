import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../data/user_info.dart';
import 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoState(inProgress: true));

  void fetch(String userName) async {
    try {
      Response response = await Dio().get('https://api.github.com/users/$userName');
      UserInfo user = UserInfo.fromJson(response.data);
      emit(this.state.copyWith(user: user, inProgress: false));
    } catch (e) {
      emit(this.state.copyWith(
        inProgress: false,
        error: e,
      ));
    }
  }
}
