import 'package:flutter/material.dart';

import '../components/sections/header.dart';
import '../components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Container(
            margin: const EdgeInsets.only(top: 24.0),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: const RecentActivity(),
          ),
        ],
      ),
    );
  }
}
