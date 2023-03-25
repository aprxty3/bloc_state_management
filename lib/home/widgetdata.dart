import 'package:bloc_state_management/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetData extends StatelessWidget {
  const WidgetData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var counter = context.read<Counter>();
    return BlocBuilder(
      bloc: counter,
      builder: (context, state) {
        return Text(
          state.toString(),
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
