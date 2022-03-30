import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdLesson extends StatelessWidget {
  const ThirdLesson({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I\'m Rich',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImaRich(title: 'I\'m Rich'),
    );
  }
}

class ImaRich extends StatelessWidget {
  final String title;

  const ImaRich({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEC107),
      appBar: AppBar(
        backgroundColor: const Color(0xFF9c28b1),
        title: Text(title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 50,
                letterSpacing: 3.0,
                color: const Color(0xFFF84038),
                fontWeight: FontWeight.w400,
              )),
          Image.asset('assets/images/diamond.png'),
        ],
      )),
    );
  }
}
