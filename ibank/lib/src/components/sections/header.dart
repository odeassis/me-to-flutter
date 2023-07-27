import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColor.gradientColor,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: "R\$",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: const <TextSpan>[
                      TextSpan(
                        text: "1000.00",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Balanço Disponível",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const Icon(
              Icons.account_circle_rounded,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
