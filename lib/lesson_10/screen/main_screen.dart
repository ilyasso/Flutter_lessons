import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/chat_page.dart';

class WhatsAppHomeScreen extends StatefulWidget {
  const WhatsAppHomeScreen({Key key}) : super(key: key);

  @override
  State<WhatsAppHomeScreen> createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('New Group'),
                value: "New group",
              ),
              PopupMenuItem(
                child: Text('New broadcast'),
                value: "New broadcast",
              ),
              PopupMenuItem(
                child: Text('WhatsApp Web'),
                value: "Whatsapp Web",
              ),
              PopupMenuItem(
                child: Text('Starred Message'),
                value: "Starred message",
              ),
              PopupMenuItem(
                child: Text('Settings'),
                value: "Settings",
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
