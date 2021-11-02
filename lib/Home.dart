import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _contador = 0;

  // void _incrementar() {
  //   setState(() {
  //     _contador++;
  //   });
  // }

  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.all(16),
            //   //Observer é um widget que observer se ocorre alguma alteração e atualiza a tela
            //   child: Observer(builder: (_) => Text(
            //       "${controller.contador}",
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 80,
            //       ),
            //     )
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(labelText: "Email"),
                onChanged: (_){},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(labelText: "Senha"),
                onChanged: (_) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text("* Campos não validados")
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                // ignore: unnecessary_statements
                onPressed: () {
                  
                },
                child: Text(
                  "Logar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
