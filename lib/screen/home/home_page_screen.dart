import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All User'),
      ),
      body: Container(
        child: const Center(
          child: Text('HomePageScreen'),
        ),
      ),
    );
  }
}
