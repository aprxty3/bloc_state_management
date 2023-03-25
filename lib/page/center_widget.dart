import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  final Counter myCounter;
  const CenterWidget({Key? key, required this.myCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder(
        bloc: myCounter,
        builder: (context, state) {
          return Text(
            state.toString(),
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
