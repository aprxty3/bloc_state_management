import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc.dart';

class PagePage extends StatelessWidget {
  const PagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Extension method : read, watch, select

    //EXTENSION: read hanya bisa membaca 1x
    // var counter = context.watch<CounterBloc>();

    //EXTENSION: read hanya bisa membaca berkali-kali, tapi membuild dari awal
    // var counter = context.watch<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              //EXTENSION: select bisa membaca berkali-kali, tapi hanya membaca state yang diinginkan
              var nameUser =
                  context.select((UserBloc bloc) => bloc.state['name']);
              return Text(
                'Nama: $nameUser',
                style: const TextStyle(fontSize: 50),
              );
            }),
            Builder(builder: (context) {
              var ageUser =
                  context.select((UserBloc bloc) => bloc.state['age']);
              return Text(
                'Nama: $ageUser',
                style: const TextStyle(fontSize: 50),
              );
            }),
            // Builder(builder: (context) {
            //   //EXTENSION: read hanya bisa membaca 1x dan hanya dalam builder ini aja
            //   var counter = context.watch<CounterBloc>();
            //   return Text(
            //     counter.state.toString(),
            //     style: TextStyle(fontSize: 100),
            //   );
            // }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    context
                        .read<UserBloc>()
                        .changeAge(context.read<UserBloc>().state['age'] - 1);
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 32,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<UserBloc>()
                        .changeAge(context.read<UserBloc>().state['age'] + 1);
                  },
                  icon: const Icon(
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
