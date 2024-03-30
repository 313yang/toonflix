import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int bgColor;
  final Color color;

  Button({
    super.key,
    required this.text,
    this.bgColor = 0xFF1F2123,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: Color(bgColor), borderRadius: BorderRadius.circular(48)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
      ),
    );
  }
}
