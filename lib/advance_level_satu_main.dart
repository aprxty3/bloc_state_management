import 'package:bloc_state_management/bloc/counter_bloc.dart';
import 'package:bloc_state_management/page/apps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: Apps(),
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
