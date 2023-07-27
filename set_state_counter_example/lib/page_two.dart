import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
 
  final Function(int) callback;
  int counter;

  
  PageTwo({
    super.key,
    required this.callback,
    required this.counter,
  });


  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
 
  /*
    Sempre que o FloatingActionButton é pressionado, o contador é incrementado
    e o valor atualizado é passado para a função de callback fornecida pelo widget pai.
    Dessa forma, widget pode reagir à mudança do valor do contador e atualizar outros
    componentes ou realizar outras tarefas necessárias com esse novo valor.
  */

  void _incrementCounter() {
    setState(() {
          widget.counter++;
    });

    /* 
      A função de callback é definida no widget pai de `PageTwo` quando ele é criado
      e pode ser usada para relizar qualquer ação necessária com o novo valor do contador.
    */
    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Page two"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(widget.counter);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(
          '${widget.counter}', 
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, 
        child: const Icon(Icons.add),
      ),
    );
  }
}
