import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  CounterCubit myCounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    print('Dibuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: myCounter.stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: TextStyle(fontSize: 50),
                  ),
                );
              }
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => myCounter.removeData(),
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => myCounter.addData(),
                icon: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void addData() {
    emit(state + 1);
  }

  void removeData() {
    emit(state - 1);
  }
}
