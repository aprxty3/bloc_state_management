import 'dart:math';

import 'package:flutter/material.dart';

import '../../bloc/bloc_export.dart';
import '../../data/models/user_model.dart';

class AddUserScreen extends StatelessWidget {
  AddUserScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    UserBloc userBloc = context.read<UserBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
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
            keyboardType: TextInputType.number,
            controller: ageController,
            decoration: const InputDecoration(
              hintText: 'Umur User',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              userBloc.add(
                AddUserEvent(
                  UserModel(
                    id: Random().nextInt(999),
                    name: nameController.text,
                    age: int.parse(ageController.text),
                  ),
                ),
              );
              Navigator.pop(context);
            },
            child: const Text('Add User'),
          ),
        ],
      ),
    );
  }
}
