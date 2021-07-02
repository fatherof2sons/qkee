import 'package:flutter/material.dart';
import 'package:qkee/src/model/shop.dart';
import 'package:qkee/src/ui/home_page.dart';

class ShopPage extends StatelessWidget {
  ShopPage({Key? key, @required this.shop}) : super(key: key);
  final Shop? shop;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.clear_rounded),
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => HomePage()),
                (route) => false),
          ),
          elevation: 0.0,
          title: Text("${shop!.name}"),
        ),
      ),
    );
  }
}
