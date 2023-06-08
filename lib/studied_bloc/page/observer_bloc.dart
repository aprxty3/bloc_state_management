import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_bloc.dart';

class ObserverBloc extends StatelessWidget {
  const ObserverBloc({super.key});

  @override
  Widget build(BuildContext context) {
    // final CounterBloc counterB = CounterBloc();
    final CounterCubit counterC = CounterCubit();
    return Scaffold(
      appBar: AppBar(
        title: Text('Observer Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterC,
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
                    // counterB.add(CounterEvent.increment);
                    counterC.increment();
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // counterB.add(CounterEvent.decrement);
                    counterC.decrement();
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
