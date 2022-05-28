import 'package:flutter/material.dart';
import 'package:general/lesson_10/CustomUI/AvtarCard.dart';
import 'package:general/lesson_10/CustomUI/ButtonCard.dart';
import 'package:general/lesson_10/CustomUI/ContactCard.dart';

import '../model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key key}) : super(key: key);

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Group',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Add participants',
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (contacts[index].select == false) {
                      setState(() {
                        contacts[index].select = true;
                        groups.add(contacts[index]);
                      });
                    } else {
                      setState(() {
                        contacts[index].select = false;
                        groups.remove(contacts[index]);
                      });
                    }
                  },
                  child: ContactCard(
                    contact: contacts[index],
                  ),
                );
              }),
          Column(
            children: [
              Container(
                height: 75,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: contacts.length,
                  itemBuilder: (context, index) => AvtarCard(),
                ),
              ),
              Divider(
                thickness: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}
