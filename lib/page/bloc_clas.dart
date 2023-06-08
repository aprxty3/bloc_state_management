import 'package:bloc_state_management/bloc/counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';

class BlocClass extends StatelessWidget {
  const BlocClass({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterB = CounterBloc();
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: counterB,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterB.add(IncrementCounter());
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    counterB.add(DecrementCounter());
                  },
                  child: const Text('Decrement'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
