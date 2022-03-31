import 'package:flutter/material.dart';

import 'screens/loadingScreen.dart';

class WEatherAppScreen extends StatelessWidget {
  const WEatherAppScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const LoadingScreen(),
    );
  }
}
