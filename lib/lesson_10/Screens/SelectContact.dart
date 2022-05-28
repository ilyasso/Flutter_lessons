import 'package:flutter/material.dart';
import 'package:general/lesson_10/CustomUI/ButtonCard.dart';
import 'package:general/lesson_10/CustomUI/ContactCard.dart';
import 'package:general/lesson_10/Screens/CreateGroup.dart';

import '../model/ChatModel.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key key}) : super(key: key);

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Dev Stack",
        status: "A full stack developer",
      ),
      ChatModel(
        name: "Jack Mike",
        status: "A flutter developer",
      ),
      ChatModel(
        name: "Jordan Cena",
        status: "A developer",
      ),
      ChatModel(
        name: "Robert Jr",
        status: "A React developer",
      ),
      ChatModel(
        name: "John Johnson",
        status: "A PHP developer",
      ),
      ChatModel(
        name: "Mirbek Mamasaliev",
        status: "A Java developer",
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Contact',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '256 contacts',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 26,
              ),
            ),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Invite a Friend'),
                  value: "Invite a Friend",
                ),
                PopupMenuItem(
                  child: Text('Contacts'),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text('Refresh'),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text('Help'),
                  value: "Help",
                ),
              ];
            }),
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CreateGroup()));
                  },
                  child: ButtonCard(
                    icon: Icons.groups,
                    name: "New group",
                  ),
                );
              } else if (index == 1) {
                return ButtonCard(
                  icon: Icons.person_add,
                  name: "New contact",
                );
              }
              return ContactCard(
                contact: contacts[index - 2],
              );
            }));
  }
}
