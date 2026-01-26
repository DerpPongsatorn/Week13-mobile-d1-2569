import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("My Card Widget", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(3, (index) {
            return Card(
              margin: EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  debugPrint("My Card");
                },
                child: Center(
                  child: Column(
                    children: [
                      Icon(Icons.home, size: 40, color: Colors.blueAccent),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
