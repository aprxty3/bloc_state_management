import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc.dart';

class HomePagePage extends StatelessWidget {
  const HomePagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          BlocSelector<UserBloc, Map<String, dynamic>, String>(
            selector: (state) => state['name'],
            builder: (context, state) {
              print('Build Name');
              return Text(
                'Nama : $state',
                style: TextStyle(fontSize: 32),
              );
            },
          ),
          BlocSelector<UserBloc, Map<String, dynamic>, int>(
            selector: (state) => state['age'],
            builder: (context, state) {
              print('Build Age');
              return Text(
                'Nama : $state',
                style: TextStyle(fontSize: 32),
              );
            },
          ),
          // Text(
          //   'Nama : ',
          //   style: TextStyle(fontSize: 32),
          // ),
          // Text(
          //   'Umur : ',
          //   style: TextStyle(fontSize: 32),
          // ),
          // SizedBox(height: 20),
          TextField(
            onChanged: (value) => userBloc.changeName(value),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] - 1);
                },
                icon: Icon(
                  Icons.remove,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {
                  userBloc.changeAge(userBloc.state['age'] + 1);
                },
                icon: Icon(
                  Icons.add,
                  size: 32,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
