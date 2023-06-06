import 'package:flutter/material.dart';

import 'kuning.dart';

class Biru extends StatelessWidget {
  const Biru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: const Kuning(),
    );
  }
}
