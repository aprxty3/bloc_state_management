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

  CounterCubit myCounter = CounterCubit(initialData: 0);

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
            initialData: myCounter.initialData,
            stream: myCounter.stream,
            builder: (context, snapshot) {
              return Center(
                child: Text(
                  snapshot.data.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => myCounter.removeData(),
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => myCounter.addData(),
                icon: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData = 0}) : super(initialData);
  int initialData;

  void addData() {
    emit(state + 1);
  }

  void removeData() {
    emit(state - 1);
  }

  //Observer (memantau perubahan state dengan onChange, onError dan lainnya)
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
