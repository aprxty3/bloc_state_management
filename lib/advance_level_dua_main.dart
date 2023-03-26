import 'package:bloc_state_management/bloc/user_bloc.dart';
import 'package:bloc_state_management/page/homepagpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => UserBloc(),
        child: HomePagePage(),
      ),
    );
  }
}
