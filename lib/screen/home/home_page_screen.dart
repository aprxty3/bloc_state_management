import 'package:bloc_state_management/models/user_model.dart';
import 'package:bloc_state_management/screen/add/add_user.dart';
import 'package:bloc_state_management/screen/edit_user/edit_user.dart';
import 'package:flutter/material.dart';

import '../../bloc/bloc_export.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('All User'),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state.allUser.isEmpty) {
            return const Center(
              child: Text('No User'),
            );
          }
          return ListView.builder(
            itemCount: state.allUser.length,
            itemBuilder: (context, index) {
              UserModel user = state.allUser[index];
              return ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditUserScreen(),
                    ),
                  );
                },
                leading: CircleAvatar(
                  child: Text('$index'),
                ),
                title: Text(user.name),
                subtitle: Text('${user.age} Tahun'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUserScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
