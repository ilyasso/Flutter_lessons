import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatelessWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(),
      home: const DiceAppBody(),
    );
  }
}

class DiceAppBody extends StatefulWidget {
  const DiceAppBody({Key key}) : super(key: key);

  @override
  State<DiceAppBody> createState() => _DiceAppBodyState();
}

class _DiceAppBodyState extends State<DiceAppBody> {
  int RightDice = 1;
  int LeftDice = 2;

  RollDice() {
    setState(() {});
    LeftDice = Random().nextInt(6) + 1;
    RightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceApp'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  RollDice();
                },
                child: Image.asset('assets/images/$LeftDice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  RollDice();
                },
                child: Image.asset('assets/images/$RightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
