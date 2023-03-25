import 'package:bloc_state_management/bloc/counter.dart';
import 'package:bloc_state_management/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => Counter(),
        child: HomePageUi(),
      ),
    );
  }
}
