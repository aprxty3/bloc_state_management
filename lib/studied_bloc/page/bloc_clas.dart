
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';
import '../bloc/counter/counter_event.dart';

class BlocClass extends StatelessWidget {
  const BlocClass({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterB = CounterBloc();
    int value = 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Class'),
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
                  style: const TextStyle(fontSize: 40),
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
                    counterB.add(IncrementCounter(value));
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    counterB.add(DecrementCounter(value));
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
