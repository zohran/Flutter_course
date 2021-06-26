import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgurl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNcFqDeU3uxJr80lesUDSwMRRre-lcMQWfn8LWZn5qRj7dQFU&s";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountEmail: Text("zeerasheed97@gmail.com"),
              accountName: Text("Zohran Rasheed"),
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgurl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              print("Laggan");
            },
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Mail",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
