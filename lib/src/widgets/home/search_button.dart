import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  SearchButton({
    Key? key,
    @required this.onPressed,
    @required this.btnText,
  }) : super(key: key);
  final void Function()? onPressed;
  final String? btnText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5.0,
      color: Colors.black87,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), side: BorderSide.none),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              btnText!,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(
              Icons.store_rounded,
              size: 30.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
