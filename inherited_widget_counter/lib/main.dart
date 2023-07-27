import 'package:flutter/material.dart';
import 'package:inherited_widget_counter/inherited_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyCounterInheritedWidget(
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            MyTextWidget(),
          ],
        ),
      ),
      floatingActionButton: const MyButton(),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("Text widget builds");

    return Text(
      InheritedModel.inheritFrom<MyInheritedWidget>(context, aspect: Aspect.update)!
        .data
        .counterValue
        .toString(),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    print("Button widget builds");
    return ElevatedButton(
      onPressed: () {
        InheritedModel.inheritFrom<MyInheritedWidget>(context, aspect: Aspect.view)!
          .data
          .incrementCounter();
      },
      child:const Text("Add"),
    );
  }
}
