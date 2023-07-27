import 'package:flutter/material.dart';

import 'src/screens/home.dart';
import 'src/themes/app_theme.dart';

void main() {
  runApp(const IBank());
}

class IBank extends StatelessWidget {
  const IBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme,
      home: const Home(),
    );
  }
}
