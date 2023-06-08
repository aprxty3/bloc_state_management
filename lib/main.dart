import 'package:bloc_state_management/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'general_observer.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(const App());
}
