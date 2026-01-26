import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Card Widget",style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint("CARD-1");
            },
            child: SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [
                  Icon(Icons.home),
                  Text("CARD-1"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
