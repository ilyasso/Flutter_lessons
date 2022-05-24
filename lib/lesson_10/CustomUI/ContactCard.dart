import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:general/lesson_10/model/ChatModel.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key key, this.contact}) : super(key: key);
  final ChatModel contact;
=======
import 'package:websafe_svg/websafe_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key key}) : super(key: key);
>>>>>>> 022a866a3dfe604ff2dd077e50f36cb848cdacf2

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
<<<<<<< HEAD
          contact.name,
=======
          "Dev Stack",
>>>>>>> 022a866a3dfe604ff2dd077e50f36cb848cdacf2
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
<<<<<<< HEAD
          contact.status,
          style: TextStyle(fontSize: 13),
=======
          'a full stack developer',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
>>>>>>> 022a866a3dfe604ff2dd077e50f36cb848cdacf2
        ),
      ),
    );
  }
}
