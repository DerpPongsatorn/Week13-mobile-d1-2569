import 'package:flutter/material.dart';
import 'package:flutter_week14/view/Home.dart';
import 'package:flutter_week14/view/card_page.dart';
import 'package:flutter_week14/view/column_page.dart';
import 'package:flutter_week14/view/listview_menu.dart';
import 'package:flutter_week14/view/mycard.dart';

import 'package:flutter_week14/view/row_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home:MyCard()
    );
  }
}