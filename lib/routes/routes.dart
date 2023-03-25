import 'package:bloc_state_management/404/404.dart';
import 'package:bloc_state_management/other/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';
import '../home/homepage.dart';

class AppRoutes {
  final Counter counter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: HomePageUi(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: NotFoundPage(),
          ),
        );
    }
  }
}
