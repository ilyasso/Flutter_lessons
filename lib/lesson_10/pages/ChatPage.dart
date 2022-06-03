import 'package:flutter/material.dart';
import 'package:general/lesson_10/CustomUI/CustomCard.dart';
import 'package:general/lesson_10/model/ChatModel.dart';
import 'package:general/lesson_10/Screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: 'Dev Stack',
      icon: 'person.svg',
      isGroup: false,
      currentMessage: 'Hi Everyone',
      time: '4:00',
    ),
    ChatModel(
      name: 'Kishor',
      icon: 'person.svg',
      isGroup: false,
      currentMessage: 'Hi Kishor',
      time: '10:00',
    ),
    ChatModel(
      name: 'Dev Server Chat',
      icon: 'groups.svg',
      isGroup: true,
      currentMessage: 'Hi Everyone on thi group',
      time: '10:00',
    ),
    ChatModel(
      name: 'Kishor',
      icon: 'person.svg',
      isGroup: false,
      currentMessage: 'Hi Kishor',
      time: '10:00',
    ),
    ChatModel(
      name: 'Dev Server Chat',
      icon: 'groups.svg',
      isGroup: true,
      currentMessage: 'Hi Everyone on thi group',
      time: '10:00',
    ),
    ChatModel(
      name: 'Kishor',
      icon: 'person.svg',
      isGroup: false,
      currentMessage: 'Hi Kishor',
      time: '10:00',
    ),
    ChatModel(
      name: 'Dev Server Chat',
      icon: 'groups.svg',
      isGroup: true,
      currentMessage: 'Hi Everyone on thi group',
      time: '10:00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (contex, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
