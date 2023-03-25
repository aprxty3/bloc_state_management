import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';
import '../other/other.dart';
import 'biru.dart';

class HomePageUi extends StatelessWidget {
  const HomePageUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counter = context.read<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Injection'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: counter,
                child: const OtherPage(),
              ),
            ),
          );
        },
        child: const Icon(Icons.forward),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.red,
              child: InkWell(
                onTap: () {
                  counter.decrement();
                },
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
            Biru(),
            Material(
              color: Colors.red,
              child: InkWell(
                onTap: () {
                  counter.increment();
                },
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
