import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: WebsafeSvg.asset(
                'assets/icons/groups.svg',
                color: Colors.white,
                height: 37,
                width: 37,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              'Dev Stack ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "Hi Dev Stack",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            trailing: Text("18:04"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Divider(
              thickness: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
