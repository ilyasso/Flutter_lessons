import 'package:flutter/material.dart';

class FormsAndCards extends StatelessWidget {
  const FormsAndCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:const Color(0xFF00695C),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Тапшырма Форма жана карта',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              const Text(
                'Ismail uulu Abdibait',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'Flutter DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2.0,
                ),
              ),
              const Divider(
                color: Colors.white,
                indent: 150,
                endIndent: 150,
                height: 40,
              ),
              Container(
                padding:const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children:const [
                     Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                      child: Icon(
                        Icons.call,
                        color: Color(0xFF00897B),
                      ),
                    ),
                     Text(
                      '+996 501 11 93 98',
                      style: TextStyle(
                        color: Color(0xFF00897B),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,
                decoration:const  BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: const[
                     Padding(
                      padding:  EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xFF00897B),
                      ),
                    ),
                     Text(
                      'abdibait.ismailuulu@gmail.com',
                      style: TextStyle(
                        color: Color(0xFF00897B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
