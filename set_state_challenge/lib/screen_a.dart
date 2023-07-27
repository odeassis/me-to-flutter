import 'package:flutter/material.dart';

class PageA extends StatefulWidget {
  final Function(int) callback; 
  int counter;

  PageA({
    super.key, 
    required this.callback,
    required this.counter,
  });

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {


  void _increment() {
    setState(() {
      widget.counter++;      
    });

    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("This is page A", style: Theme.of(context).textTheme.headlineMedium,),
            Text('${widget.counter}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _increment(),          
        child: Icon(Icons.add,),),
    );
  }
}
