import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final kelgensan;
  const NewPage({
    Key key,
    @required this.kelgensan,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('lesson_02'),
        ),
        body: Center(
          child: Container(
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 294,
                height: 48,
                child: Center(
                  child: Text(
                    'сан:${kelgensan}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
