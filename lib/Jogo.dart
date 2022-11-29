// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  void testePressionado() {
    print('clicou');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              'Escolha do APP',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              testePressionado();
            },
            child: Image.asset('images/padrao.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'Escolha uma Opção Abaixo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'images/pedra.png',
                height: 100,
              ),
              Image.asset(
                'images/papel.png',
                height: 100,
              ),
              Image.asset(
                'images/tesoura.png',
                height: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
