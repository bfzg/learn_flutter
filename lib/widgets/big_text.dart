import 'dart:ui';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overFlow;
  int maxLines;

  BigText({
    super.key,
    this.color = const Color(0xFF5c524f),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: maxLines,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400),
    );
  }
}
