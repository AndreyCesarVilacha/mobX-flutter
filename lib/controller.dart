import 'package:mobx/mobx.dart';
//nome do arquivo.g.dart
//Use o comando no terminal 'flutter pub run build_runner build' ou 'flutter pub run build_runner watch'
part 'controller.g.dart';

//Mesclando a classe ControllerBase com _$Controller
class Controller = ControllerBase with _$Controller;

//a utilização do mixin Store é para geração dos códigos automáticos
abstract class ControllerBase with Store {

  ControllerBase(){



    //É chamada toda vez que um observable é alterado ou o autocomputado é acionado
  //   autorun((_){
  //     print(contador);
  //   });
  // }

  // @observable
  // int contador = 0;

  // @action
  // incrementar(){
  //   contador++;
  // }

  /*
  //Usando sem o codegen, remova o abstract da class
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
  */
  }
}