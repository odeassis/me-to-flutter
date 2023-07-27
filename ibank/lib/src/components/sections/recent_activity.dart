import 'package:flutter/material.dart';
import 'package:ibank/src/components/activity_info.dart';
import 'package:ibank/src/themes/theme_colors.dart';

import '../box_card.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BoxCard(
      widget: _RecentActivityContent(),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ActivityInfo(
                dotColor: ThemeColor.outcome,
                title: "Saida",
                subTitle: "\$9900.97"),
            ActivityInfo(
                dotColor: ThemeColor.income,
                title: "Entrada",
                subTitle: "\$9900.97"),
          ],
        ),
      ],
    );
  }
}
