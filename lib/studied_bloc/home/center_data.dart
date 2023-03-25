import 'package:flutter/material.dart';

import 'widgetdata.dart';

class CenterData extends StatelessWidget {
  const CenterData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: WidgetData(),
    );
  }
}
