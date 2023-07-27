import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget widget;

  const BoxCard({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: Theme.of(context).cardColor,
      ),
      child: widget,
    );
  }
}
