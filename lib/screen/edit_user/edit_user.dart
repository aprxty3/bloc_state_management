import 'package:bloc_state_management/models/user_model.dart';
import 'package:flutter/material.dart';

import '../../bloc/bloc_export.dart';

class EditUserScreen extends StatelessWidget {
  final UserModel user;

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  EditUserScreen(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    nameController.text = user.name;
    ageController.text = user.age.toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Nama User',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Umur User',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              userBloc.add(EditUserEvent(
                UserModel(
                  id: user.id,
                  name: nameController.text,
                  age: int.parse(ageController.text),
                ),
              ));
              Navigator.pop(context);
            },
            child: const Text('Edit User'),
          ),
        ],
      ),
    );
  }
}
