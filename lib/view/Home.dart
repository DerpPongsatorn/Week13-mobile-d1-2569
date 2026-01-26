import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week14/view/row_page.dart';
import 'card_page.dart';
import 'column_page.dart';
import 'mycard.dart';

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
              accountName: Text("Mr.Mark Zuckerberg"),
              accountEmail: Text("Mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //child: Icon(Icons.android),
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlT3lrGX4jdkZEOPL6sgmOFSfhI1NOELMssQ&s'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () async {
                debugPrint("TEST ok");
                await Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () async {
                debugPrint("TEST row");
                await Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage(text: "Row Widget",)),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Column Widget"),
              onTap: () {
                debugPrint("TEST column");
                //Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnPage(),)
                Navigator.pushNamed(context, "/column");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () async {

                //Navigator.push(context, MaterialPageRoute(builder: (context) => CardPage(),)
                //);
                final result = await Navigator.pushNamed(context, "/menu");
                debugPrint("TEST LsitView $result");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card_rounded),
              title: Text("Card and Inkwall"),
              onTap: () async {
                debugPrint("TEST Card");
                //Navigator.push(context, MaterialPageRoute(builder: (context) => MyCard(),)
                //);
                await Navigator.pushNamed(context, "/card");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card_rounded),
              title: Text("My-Card"),
              onTap: ()  async {
                debugPrint("TEST Card2");
                //Navigator.pushNamed(context, "/my-card");
                await Navigator.pushNamed(context,  MyCard.id);
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
