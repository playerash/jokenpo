import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Image.asset("assets/padrao.png"),
          const Text("Selecione:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset("assets/tesoura.png"),
              ),
              GestureDetector(
                child: Image.asset("assets/pedra.png"),
              ),
              GestureDetector(
                child: Image.asset("assets/papel.png"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
