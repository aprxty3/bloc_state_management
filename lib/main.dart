import 'package:bloc_state_management/page/bloc_clas.dart';
import 'package:bloc_state_management/page/enum_class.dart';
import 'package:bloc_state_management/page/observer_bloc.dart';
import 'package:bloc_state_management/page/pagepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/user_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BlocClass(),
    );
  }
}
