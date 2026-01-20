import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewMenu extends StatelessWidget {
  const ListviewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Listview Widget",style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: ListView.separated(itemBuilder:  (context, index) {
          return ListTile(
            title: Text("Menu-1"),
            subtitle: Text("SUB-1"),
            leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.arrow_right),
            onTap: () {
              debugPrint("MENU-1");
            },

          );
        }  , separatorBuilder: (context, index) {
          return Divider(color: Colors.purple);
        } , itemCount: 20,
        ),
      ),
    );
  }
}
