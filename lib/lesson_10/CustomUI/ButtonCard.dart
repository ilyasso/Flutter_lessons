import 'package:flutter/material.dart';
import 'package:general/lesson_10/model/ChatModel.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({Key key, this.name, this.icon}) : super(key: key);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          icon,
          size: 26,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff25D366),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
