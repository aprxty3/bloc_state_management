import 'package:bloc_state_management/studied_bloc/bloc/counter.dart';
import 'package:bloc_state_management/studied_bloc/page/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: const MaterialApp(
        home: HomeProvider(),
        // HomePage(),
      ),
    );
  }
}
