import 'package:flutter/material.dart';
import 'package:set_state_counter_example/my_stateful_widget.dart';
import 'package:set_state_counter_example/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Set State Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Set State Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;


  void _navigate() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PageTwo(callback: (value) {
            setState(() {
            _counter = value;
            });
          }, 
          counter: _counter,
        ),
      ),
    );
  }

  /*
  void _navigate() async {
    var value = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PageTwo(counter: _counter),),
    );

    if (value != null) setState(() {
      _counter = value;
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ExampleStatefulPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigate,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
