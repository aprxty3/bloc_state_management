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
        title: Text('BLOC BUILDER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
            bloc: myCounter,
            buildWhen: (previous, current) {
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              return Center(
                child: Text(
                  state.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              );
            },
          ),

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
