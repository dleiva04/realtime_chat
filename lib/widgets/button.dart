import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final dynamic onPressed;
  final double horizontalPadding;
  final double verticalPadding;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final double fontSize;
  final Color color;
  final Color primary;
  final FontWeight fontWeight;
  final bool disabled;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
    this.horizontalPadding = 0.0,
    this.verticalPadding = 0.0,
    this.topPadding = 0.0,
    this.bottomPadding = 0.0,
    this.leftPadding = 0.0,
    this.rightPadding = 0.0,
    this.fontSize = 14.0,
    this.color = Colors.black,
    this.primary = Colors.white,
    this.fontWeight = FontWeight.normal,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: verticalPadding != 0 ? horizontalPadding : topPadding,
        bottom: verticalPadding != 0 ? horizontalPadding : bottomPadding,
        left: horizontalPadding != 0 ? horizontalPadding : leftPadding,
        right: horizontalPadding != 0 ? horizontalPadding : rightPadding,
      ),
      child: TextButton(
        onPressed: disabled ? null : onPressed,
        child: Text(text),
        style: TextButton.styleFrom(
          primary: primary,
          backgroundColor: color,
          shape: const StadiumBorder(),
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
          ),
          minimumSize: const Size.fromHeight(50),
        ),
      ),
    );
  }
}
