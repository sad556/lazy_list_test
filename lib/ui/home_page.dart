import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/list_cubit.dart';
import '../bloc/list_state.dart';
import '../bloc/user_info_cubit.dart';
import 'user_info_page.dart';
import 'bottom_loader.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Github users")),
      body: BlocConsumer<ListCubit, ListState>(
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
        builder: (ctx, state) => ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(),
          controller: context.read<ListCubit>().controller,
          itemCount: state.hasReachedMax ? state.users?.length : state.users.length + 1,
          itemBuilder: (context, index) => index >= state.users.length ?
          BottomLoader() :
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(state.users[index].avatarUrl),
            ),
            title: Text(state.users[index].login ?? 'Имя не указано'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (_) => UserInfoCubit()..fetch(state.users[index].login),
                  child: UserInfoPage(),
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}