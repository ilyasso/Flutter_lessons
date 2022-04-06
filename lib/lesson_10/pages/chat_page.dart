import 'package:flutter/material.dart';
import 'package:general/lesson_10/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView(
        children: [
          CustomCard(),
          CustomCard(),
          CustomCard(),
          CustomCard(),
        ],
      ),
    );
  }
}
