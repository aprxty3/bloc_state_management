import 'package:bloc_state_management/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_bloc.dart';
import 'page/new_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeBloc myTheme = ThemeBloc();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => myTheme,
        ),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        bloc: myTheme,
        builder: (context, state) {
          return MaterialApp(
            theme: state == true ? ThemeData.light() : ThemeData.dark(),
            home: NewHomePage(),
          );
        },
      ),
    );

    // BlocBuilder<ThemeBloc, bool>(
    //   bloc: ThemeBloc(),
    //   builder: (context, state) {
    //     return MaterialApp(
    //       theme: ThemeData.dark(),
    //       home: BlocProvider(
    //         create: (context) => CounterBloc(),
    //         child: NewHomePage(),
    //       ),
    //     );
    //   },
    // );
  }
}
