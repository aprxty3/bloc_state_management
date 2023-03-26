import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class PagePage extends StatelessWidget {
  const PagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //EXTENSION: read hanya bisa membaca 1x
    // var counter = context.watch<CounterBloc>();

    //EXTENSION: read hanya bisa membaca berkali-kali, tapi membuild dari awal
    // var counter = context.watch<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              //EXTENSION: read hanya bisa membaca 1x dan hanya dalam builder ini aja
              var counter = context.watch<CounterBloc>();
              return Text(
                counter.state.toString(),
                style: TextStyle(fontSize: 100),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().remove();
                  },
                  icon: Icon(
                    Icons.remove,
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterBloc>().add();
                  },
                  icon: Icon(
                    Icons.add,
                    size: 32,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
