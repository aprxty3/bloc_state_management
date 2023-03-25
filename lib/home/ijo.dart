import 'package:flutter/material.dart';

import 'center_data.dart';

class Ijo extends StatelessWidget {
  const Ijo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.green,
      child: CenterData(),
    );
  }
}
