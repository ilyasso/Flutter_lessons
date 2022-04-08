import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: XylophoneHomePage(),
    );
  }
}

class XylophoneHomePage extends StatefulWidget {
  const XylophoneHomePage({Key key}) : super(key: key);

  @override
  State<XylophoneHomePage> createState() => _XylophoneHomePageState();
}

class _XylophoneHomePageState extends State<XylophoneHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylophoneButton(
                  XyloColor: Color(0xFFdc6852), XyloLink: 'assets_note1.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFFd79853), XyloLink: 'assets_note2.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFF295764), XyloLink: 'assets_note3.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFF223e66), XyloLink: 'assets_note4.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFF65515a), XyloLink: 'assets_note5.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFF353c54), XyloLink: 'assets_note6.wav'),
              XylophoneButton(
                  XyloColor: Color(0xFF4c4459), XyloLink: 'assets_note7.wav'),
            ],
          )),
    );
  }
}

class XylophoneButton extends StatefulWidget {
  final XyloColor;
  final String XyloLink;
  const XylophoneButton({Key key, @required this.XyloColor, this.XyloLink})
      : super(key: key);

  @override
  State<XylophoneButton> createState() => _XylophoneButtonState();
}

class _XylophoneButtonState extends State<XylophoneButton> {
  PlaySound(String Xylink) {
    final Splay = AudioCache(prefix: 'assets/audios/');
    Splay.play(Xylink);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          PlaySound(widget.XyloLink);
        },
        style: TextButton.styleFrom(backgroundColor: widget.XyloColor),
      ),
    );
  }
}
