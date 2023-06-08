import 'package:bloc_state_management/studied_bloc/bloc/user_bloc.dart';
import 'package:bloc_state_management/studied_bloc/page/homepagpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => UserBloc(),
        child: const HomePagePage(),
      ),
    );
  }
}
