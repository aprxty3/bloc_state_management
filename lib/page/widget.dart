import 'package:bloc_state_management/page/center_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({super.key, required this.myCounter});
  final Counter myCounter;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 200,
        color: Colors.red,
        child: CenterWidget(
          myCounter: myCounter,
        ));
  }
}
