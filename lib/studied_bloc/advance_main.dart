import 'package:bloc_state_management/studied_bloc/bloc/counter.dart';
import 'package:bloc_state_management/studied_bloc/home/homepage.dart';
import 'package:bloc_state_management/studied_bloc/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final router = AppRoutes();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: const MaterialApp(
        home: HomePageUi(),
        // onGenerateRoute: router.onRoute,
      ),
    );
  }
}
