import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Flutter Development"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mr.Mark Suckerberg"),
              accountEmail: Text("Mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                debugPrint("TEST ok");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () {
                debugPrint("TEST row");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Columm Widget"),
              onTap: () {
                debugPrint("TEST columm");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () {
                debugPrint("TEST LsitView");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card_rounded),
              title: Text("Card and Inkwall"),
              onTap: () {
                debugPrint("TEST Card");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card_rounded),
              title: Text("Card and Inkwall*"),
              onTap: () {
                debugPrint("TEST Card2");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("MyApp"),
      ),
    );
  }
}
