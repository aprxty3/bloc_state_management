import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/theme_bloc.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var myCouter = context.read<CounterBloc>();
    var myTheme = context.read<ThemeBloc>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myTheme.changeTheme();
        },
        child: Icon(Icons.abc),
      ),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              bloc: myCouter,
              builder: (context, state) {
                return Text(
                  state.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    myCouter.remove();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    myCouter.add();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
