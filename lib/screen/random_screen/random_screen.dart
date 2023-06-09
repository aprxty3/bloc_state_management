import 'package:flutter/material.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random Screen'),
        ),
        body: _body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.refresh),
        ));
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 75,
            height: 75,
            child: Container(
              color: Colors.amberAccent,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Joni Sins',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text('Jonisins@gmail.com'),
          const SizedBox(height: 20),
          const Text('=========== M E N U ==========='),
          const SizedBox(height: 20),
          const Text('Mie Ayam Bakso'),
          const SizedBox(height: 4),
          const Text('10 Porsi'),
          const SizedBox(height: 4),
          const Text('Tingkat Kesulitan ( Rumit )'),
          const SizedBox(height: 20),
          Container(
            width: 200,
            height: 150,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
