import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Firdaus Firmansyah"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img/me.jpg"),
              ),
              accountEmail: Text("firmanzaki21@gmail.com"),
          ),
          DrawerListTitle(
            iconData: Icons.group,
            title: "NewGroup",
            onTilePressed: (){},
          ),
          DrawerListTitle(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
          DrawerListTitle(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: (){},
          ),
          DrawerListTitle(
            iconData: Icons.contacts,
            title: "contacts",
            onTilePressed: (){},
          ),
          DrawerListTitle(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: (){},
          ),
          DrawerListTitle(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: (){},
          ),
        ],
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTitle({Key? key, required this.iconData, required this.title, required this.onTilePressed})
  :super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title,style: TextStyle(fontSize: 16),),
    );
  }
}