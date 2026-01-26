import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  final String text;

  const RowPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(text, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Row(
          children: [
            Text("R-1", style: TextStyle(fontSize: 25)),
            Text("R-2", style: TextStyle(fontSize: 25)),
            Text("R-3", style: TextStyle(fontSize: 25)),
            Text("R-4", style: TextStyle(fontSize: 25)),
            Text("R-5", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
