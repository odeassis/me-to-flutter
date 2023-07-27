import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget {
  @override
  State<ExampleStatefulPage> createState() => _ExempleStatefulPageSate();
}

class _ExempleStatefulPageSate extends State<ExampleStatefulPage> {

  @override
  Widget build(BuildContext context) {
    print("Child Widget builds");
    return Container();
  }
}
