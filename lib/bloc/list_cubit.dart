import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

import '../data/user.dart';
import 'list_state.dart';


class ListCubit extends Cubit<ListState> {
  ScrollController _controller;
  int _since = 0;
  List<User> _users = [];
  bool _hasReachedMax = false;
  
  ScrollController get controller => _controller;

  ListCubit() :
    _controller = ScrollController(),
    super(ListState(users: []))
  {
    _controller.addListener(() {
      final maxScroll = controller.position.maxScrollExtent;
      final currentScroll = controller.position.pixels;
      if (maxScroll - currentScroll <= 200 && !this.state.inProgress && !this._hasReachedMax) {
        this.fetch();
      }
    });
  }

  void fetch() async {
    if (_hasReachedMax) {
      return;
    }

    emit(this.state.copyWith(inProgress: true));

    try {
      Response response = await Dio().get('https://api.github.com/users',
        queryParameters: {'since': _since,}
      );

      List<User> users =  (response.data as List<dynamic>).map((el) => User.fromJson(el)).toList();
      this._hasReachedMax = _since == users.last.id;
      this._since = users.last.id;
      this._users.addAll(users);
      emit(this.state.copyWith(inProgress: false, users: _users));
    } catch (e) {
      emit(this.state.copyWith(
        inProgress: false,
        users: _users,
        error: e
      ));
    }
  }


  @override
  Future<Function> close() {
    controller.dispose();
    return super.close();
  }
}
