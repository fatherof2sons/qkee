import 'package:flutter/material.dart';

class FooterMain extends StatelessWidget {
  FooterMain({Key? key, @required this.footerText}) : super(key: key);
  final String? footerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        footerText!,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
