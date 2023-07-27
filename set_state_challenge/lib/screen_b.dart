import 'package:flutter/material.dart';

class PageB extends StatefulWidget {
  
  final Function(int) callback;
  int counter;

  PageB({
    super.key,
    required this.callback,
    required this.counter,
  });

  @override
  State<PageB> createState() => _PageBState();

}

class _PageBState extends State<PageB> {


  void _decrement() {
    setState(() {
      widget.counter--;      
    });

    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Page B Counter"),
            Text('${widget.counter}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _decrement(),
        child: const Icon(Icons.minimize),
      ),

    );
  }
}
