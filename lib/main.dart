import 'package:flutter/material.dart';
import 'package:qkee/src/ui/home_page.dart';
import 'src/ui/shop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: "Poppins",
      ),
      home: HomePage(),
    );
  }
}
