import 'package:flutter/material.dart';
import 'lesson_01.dart';

class HomePageButton extends StatelessWidget {
  final name;
  final link;
  const HomePageButton({Key key, @required this.name, this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) => link));
        },
        child: Center(child: Text(name)),
      ),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFECEFF1),
      ),
      width: 150,
      height: 56,
    );
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}
