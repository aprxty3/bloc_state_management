import 'package:flutter/material.dart';

class EditUserScreen extends StatelessWidget {
  const EditUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Nama User',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Umur User',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Edit User'),
          ),
        ],
      ),
    );
  }
}
