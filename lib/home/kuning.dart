import 'package:flutter/material.dart';

import 'ijo.dart';

class Kuning extends StatelessWidget {
  const Kuning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.amber,
      child: Ijo(),
    );
  }
}
