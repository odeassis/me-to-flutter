import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final Color color;

  const DotIndicator({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      width: 10,
      height: 10,
    );
  }
}
