import 'package:flutter/material.dart';

import 'screen/main_screen.dart';

class WhatsappApp extends StatelessWidget {
  const WhatsappApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff075e54),
          secondary: Color(0xff128c7e),
        ),
      ),
      home: WhatsAppHomeScreen(),
    );
  }
}
