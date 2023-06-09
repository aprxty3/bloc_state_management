import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../404/404.dart';
import '../bloc/counter.dart';
import '../home/homepage.dart';
import '../other/other.dart';

class AppRoutes {
  final Counter counter = Counter();

  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: const HomePageUi(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: const OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: counter,
            child: const NotFoundPage(),
          ),
        );
    }
  }
}
