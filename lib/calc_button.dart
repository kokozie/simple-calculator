import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {

  final String text;
  final TapCallBack onItemTap;
  final Color? color;
  final Color? textColor;

  const CalcButton({
    required this.text,
    required this.onItemTap,
    this.color,
    this.textColor,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.all(5),
      child: MaterialButton(
        color: color ?? Colors.redAccent,
        onPressed: onItemTap,
        shape: CircleBorder(),
        child:  Text(text,
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 30
          ),
        ),
      ),
    );
  }

}

typedef TapCallBack = void Function();