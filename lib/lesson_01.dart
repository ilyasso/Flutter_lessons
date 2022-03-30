import 'package:flutter/material.dart';

import 'lesson_02.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({
    Key key,
    @required this.title,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter != 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text('lesson_01'),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 70, 243, 243)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewPage(kelgensan: _counter)));
              },
              child: Container(
                width: 294,
                height: 48,
                child: Center(
                  child: Text(
                    'сан: $_counter',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.all(50.0),
                height: 44,
                width: 276,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 94, 166)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ))),
                      onPressed: _decrementCounter,
                      child: Container(
                        width: 69,
                        height: 48,
                        child: Icon(
                          Icons.remove,
                          size: 44.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 94, 166)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ))),
                      onPressed: _incrementCounter,
                      child: Container(
                        width: 69,
                        height: 48,
                        child: Icon(
                          Icons.add,
                          size: 44.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
