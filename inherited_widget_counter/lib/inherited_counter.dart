import 'package:flutter/material.dart';

enum Aspect {
  view,
  update,
}

class MyInheritedWidget extends InheritedModel<Aspect> {
  
  // Armazena o estado do contador por meio da classe MyCounterInheritedWidgetState
  final MyCounterInheritedWidgetState data;

  const MyInheritedWidget({
    super.key,
    required this.data,
    required super.child,
  });


  /*
    Método é chamado quando algum widget abaixo do InheritedWidget chama 
    `BuildContext.dependOnInheritedWidgetOfExactType`, para verificar se 
    hove alguma mudança significativa nos dados fornecidos por esse widget.  
  */
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) => child != oldWidget;

  @override
  bool updateShouldNotifyDependent(
    covariant InheritedModel<Aspect> oldWidget,
    Set<Aspect> dependencies) {
    
    if(dependencies.contains(Aspect.update)) return true;
    
    return false;
  }

}

/*
  Essa é a classe que encapsula o InheritedWidget e estende `StatefulWidget`.
  Ela possui um champo `child`, que representa o widget filho que será contruido
  sob o contexto do `MyInheritedWidget`.
*/
class MyCounterInheritedWidget extends StatefulWidget {
 
  final Widget child;

  const MyCounterInheritedWidget({
    super.key,
    required this.child,
  });

  /*
    O método estático `of` permite acesssar o estado `MyCounterInheritedWidgetState`
    a partir do contexto. Ele faz isso usando `BuildContext.dependOnInheritedWidgetOfExactType`
    para procurar um widget do tipo `MyInheritedWidget`. Se for encontrado, ele
    extrai o estado `data` dele e o retorna. Caso não encontre, uma exceção é lançada.
  */
  static MyCounterInheritedWidgetState of (BuildContext context) {
    final MyCounterInheritedWidgetState? result = 
      context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()?.data;

    assert(result != null, 'No counter found in context!');

    return result!;
  }

  @override
  State<StatefulWidget> createState() => MyCounterInheritedWidgetState();
}

class MyCounterInheritedWidgetState extends State<MyCounterInheritedWidget> {

  int _counterValue = 0;

  int get counterValue => _counterValue;

  void incrementCounter(){
    setState(() {
      _counterValue++;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      data: this,
      child: widget.child,
    );
  }
}
