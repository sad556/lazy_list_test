import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_info_cubit.dart';
import '../bloc/user_info_state.dart';

class UserInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Info"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<UserInfoCubit, UserInfoState>(
          listener: (ctx, state) {
            if (state.error != null) {
              Scaffold.of(ctx).showSnackBar(
                SnackBar(
                  content: Text(state.error.toString()),
                  backgroundColor: Colors.red
                )
              );
            }
          },
          builder: (ctx, state) {
            if (state.inProgress) {
              return Center(child: CircularProgressIndicator());
            }
            if (state.user == null) {
              return Text("Пользователь не найден");
            }
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(state.user.avatarUrl),
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Text(state.user.name ?? 'Имя не указано'),
                      Text(state.user.email ?? 'Email не указан'),
                    ],
                  ),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}