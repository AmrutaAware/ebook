import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
    const DrawerScreen({super.key});

    @override
    State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Drawer Example'),
    ),
    drawer: Drawer(
    child: ListView(
    children: <Widget>[
    UserAccountsDrawerHeader(
    arrowColor: Colors.green,
    decoration: BoxDecoration(color: Colors.pink),
    accountName: Text('Sanika Chavan'),
    accountEmail: Text("sanika@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/')


    ),
    ),
    ],

    ),
    ),
    );
  }
}