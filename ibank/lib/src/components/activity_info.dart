import 'package:flutter/material.dart';

import 'dot_indicator.dart';

class ActivityInfo extends StatelessWidget {
  final Color dotColor;
  final String title;
  final String subTitle;

  const ActivityInfo({
    Key? key,
    required this.dotColor,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DotIndicator(
          color: dotColor,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        )
      ],
    );
  }
}
