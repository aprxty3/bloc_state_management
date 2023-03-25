import 'package:bloc_state_management/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  Counter myCounter = Counter();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLOC Consumer'),
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
                  style: TextStyle(fontSize: 50),
                ),
              );
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
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
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => myCounter.decrement(),
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => myCounter.increment(),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
