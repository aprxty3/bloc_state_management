import 'package:bloc_state_management/screen/add/add_user.dart';
import 'package:bloc_state_management/screen/edit_user/edit_user.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All User'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
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
            title: Text('Nama User $index'),
            subtitle: Text('Umur User $index'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddUserScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
