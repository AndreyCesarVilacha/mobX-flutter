import 'package:mobx/mobx.dart';

class Controller {
  //Criando um observado
  Observable<int> _contador = Observable(0);
  //Criando uma ação
  Action? incrementar;

  //Associando a ação incrementar com o método _incrementar
  Controller(){
    incrementar = Action(_incrementar);
  }

  int get contador => _contador.value;
  set contador(int novoValor) => _contador.value = novoValor; 

  //Criando o método responsavel por incrementar o valor
  _incrementar(){
    //_contador.value = _contador.value + 1;
    contador++;
  }
  
}