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
  List<ChatModel> groupmember = [];
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
              itemCount: contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: groupmember.length > 0 ? 90 : 10,
                  );
                }
                return InkWell(
                  onTap: () {
                    if (contacts[index - 1].select == false) {
                      setState(() {
                        contacts[index - 1].select = true;
                        groupmember.add(contacts[index - 1]);
                      });
                    } else {
                      setState(() {
                        contacts[index - 1].select = false;
                        groupmember.remove(contacts[index - 1]);
                      });
                    }
                  },
                  child: ContactCard(
                    contact: contacts[index - 1],
                  ),
                );
              }),
          groupmember.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true)
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groupmember.remove(contacts[index]);
                                  });
                                },
                                child: AvtarCard(
                                  contact: contacts[index],
                                ),
                              );
                            else
                              return Container();
                          }),
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
