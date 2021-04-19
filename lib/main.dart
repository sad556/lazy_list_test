import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/home_page.dart';
import 'bloc/list_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LazyList',
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (_) => ListCubit()..fetch(),
        child: HomePage(),
      ),
    );
  }
}

