import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  MainTitle({
    @required this.title,
    @required this.onLongPress,
  });
  final String? title;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
            fontWeight: FontWeight.w300,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
