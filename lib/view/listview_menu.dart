
import 'package:flutter/material.dart';
class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData? icon;

  ListMenu({required this.title, required this.subtitle, required this.icon});
}

List<ListMenu> menus = [
  ListMenu(title: "menu-1", subtitle: "sub-1", icon: Icons.person),
  ListMenu(title: "menu-2", subtitle: "sub-2", icon: Icons.person_add),
  ListMenu(title: "menu-3", subtitle: "sub-3", icon: Icons.wifi),
  ListMenu(title: "menu-4", subtitle: "sub-4", icon: Icons.build),
  ListMenu(title: "menu-5", subtitle: "sub-5", icon: Icons.build),
  ListMenu(title: "menu-6", subtitle: "sub-6", icon: Icons.build),
  ListMenu(title: "menu-7", subtitle: "sub-7", icon: Icons.build),
  ListMenu(title: "menu-8", subtitle: "sub-8", icon: Icons.build),
  ListMenu(title: "menu-9", subtitle: "sub-9", icon: Icons.build),
  ListMenu(title: "menu-10", subtitle: "sub-10", icon: Icons.build),
];

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
            title: Text("${menus[index].title}"),
            subtitle: Text("${menus[index].subtitle}"),
            leading: CircleAvatar(child: Icon(menus[index].icon)),
            //trailing: Icon(Icons.arrow_right),
            trailing: IconButton(onPressed: () {
              debugPrint(menus[index].title);
            }, icon: Icon(Icons.delete)),
            onTap: () {
              debugPrint(menus[index].title);
              if(Navigator.canPop(context)){
                Navigator.pop(context, menus[index].title);
              }
            },

          );
        }  , separatorBuilder: (context, index) {
          return Divider(color: Colors.purple);
        } , itemCount: menus.length,
        ),
      ),
    );
  }
}
