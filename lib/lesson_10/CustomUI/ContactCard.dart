import 'package:flutter/material.dart';
import 'package:general/lesson_10/model/ChatModel.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key key, this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          child: WebsafeSvg.asset(
            'assets/icons/person.svg',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          backgroundColor: Colors.blueGrey[200],
        ),
        title: Text(
          contact.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          contact.status,
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
