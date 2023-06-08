import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'general_observer.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(const MyApp());
}
