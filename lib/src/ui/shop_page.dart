import 'package:flutter/material.dart';
import 'package:qkee/src/model/shop.dart';
import 'package:qkee/src/ui/home_page.dart';

class ShopPage extends StatelessWidget {
  ShopPage({Key? key, @required this.shop}) : super(key: key);
  final Shop? shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.clear_rounded),
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => HomePage()), (route) => false),
        ),
        centerTitle: true,
        title: Text(shop!.name ?? "Shop Name"),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: Text("Shop Page"),
      ),
    );
  }
}
