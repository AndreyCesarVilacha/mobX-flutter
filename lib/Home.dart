import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "${_contador}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 80,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: _incrementar,
                child: Text(
                  "Incrementar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
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
