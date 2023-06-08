import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';

class HomePage extends StatelessWidget {
  Counter myCounter = Counter();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counter(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BLOC Consumer'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<Counter, int>(
              bloc: myCounter,
              builder: (context, state) {
                return Center(
                  child: Text(
                    state.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                );
              },
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text(
                      'data ganjil',
                    ),
                  ),
                );
              },
              listenWhen: (previous, current) {
                if (current % 2 == 1) {
                  return true;
                } else {
                  return false;
                }
              },
            ),

            // BlocListener<Counter, int>(
            //   bloc: myCounter,
            // listenWhen: (previous, current) {
            //   if (current % 2 == 1) {
            //     return true;
            //   } else {
            //     return false;
            //   }
            // },
            //   listener: (context, state) {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         duration: Duration(seconds: 1),
            //         content: Text(
            //           'data ganjil',
            //         ),
            //       ),
            //     );
            //   },
            //   child: BlocBuilder<Counter, int>(
            //     bloc: myCounter,
            //     builder: (context, state) {
            //       return Center(
            //         child: Text(
            //           state.toString(),
            //           style: TextStyle(fontSize: 50),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // StreamBuilder(
            //   stream: myCounter.stream,
            //   initialData: myCounter.initData,
            //   builder: (context, snapshot) {
            // return Center(
            //   child: Text(
            //     myCounter.state.toString(),
            //     style: TextStyle(fontSize: 50),
            //   ),
            // );
            //   },
            // ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => myCounter.decrement(),
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () => myCounter.increment(),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
