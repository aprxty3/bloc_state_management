import 'package:bloc_state_management/bloc/counter.dart';
import 'package:bloc_state_management/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'other/other.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: BlocProvider(
      //   create: (context) => Counter(),
      //   child: HomePageUi(),
      // ),

      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider.value(
              value: counter,
              child: HomePageUi(),
            ),
        '/other': (context) => BlocProvider.value(
              value: counter,
              child: OtherPage(),
            ),
      },
    );
  }
}
