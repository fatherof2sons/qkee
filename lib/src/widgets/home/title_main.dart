import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  MainTitle({Key? key, @required this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title!,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.black,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
