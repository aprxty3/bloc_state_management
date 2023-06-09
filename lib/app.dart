import 'package:flutter/material.dart';

import 'bloc/bloc_export.dart';
import 'screen/home/home_page_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => UserBloc()),
      BlocProvider(create: (context) => RandomBloc()),
    ], child: const AppView());
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageScreen(),
    );
  }    
}
