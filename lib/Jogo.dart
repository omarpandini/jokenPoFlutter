// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage('images/padrao.png');

  int vitorias = 0;
  int empates = 0;
  int derrotas = 0;

  void _opcaoSelecionada(String escolhaUsuario) {
    final opcoes = ["PEDRA", "PAPEL", "TESOURA"];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];

    if (escolhaApp == 'PEDRA') {
      _imagemApp = AssetImage('images/pedra.png');
    } else if (escolhaApp == 'PAPEL') {
      _imagemApp = AssetImage('images/papel.png');
    } else if (escolhaApp == 'TESOURA') {
      _imagemApp = AssetImage('images/tesoura.png');
    }

    print(resultado(escolhaUsuario, escolhaApp));
    print('Vitórias: ' + vitorias.toString());
    print('Empates: ' + empates.toString());
    print('Derrotas: ' + derrotas.toString());
  }

  @override
  Widget build(BuildContext context) {
    const textStyleResult = TextStyle(fontSize: 25);

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
          Image(image: this._imagemApp),
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _opcaoSelecionada('PEDRA');
                  });
                },
                child: Image.asset(
                  'images/pedra.png',
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _opcaoSelecionada('PAPEL');
                  });
                },
                child: Image.asset(
                  'images/papel.png',
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _opcaoSelecionada('TESOURA');
                  });
                },
                child: Image.asset(
                  'images/tesoura.png',
                  height: 100,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Resultados',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Vitórias',
                style: textStyleResult,
              ),
              Text('Empates', style: textStyleResult),
              Text('Derrotas', style: textStyleResult),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$vitorias',
                style: textStyleResult,
              ),
              Text('$empates', style: textStyleResult),
              Text('$derrotas', style: textStyleResult),
            ],
          )
        ],
      ),
    );
  }

  String resultado(escolhaUsuario, escolhaApp) {
    print('escolhaUsuario ' + escolhaUsuario);
    print('escolhaApp ' + escolhaApp);

    if (escolhaUsuario == 'PEDRA') {
      if (escolhaApp == 'TESOURA') {
        vitorias++;
        return 'G';
      } else if (escolhaApp == 'PEDRA') {
        empates++;
        return 'E';
      } else if (escolhaApp == 'PAPEL') {
        derrotas++;
        return 'D';
      }
    }
    if (escolhaUsuario == 'PAPEL') {
      if (escolhaApp == 'PEDRA') {
        vitorias++;
        return 'G';
      } else if (escolhaApp == 'PAPEL') {
        empates++;
        return 'E';
      } else if (escolhaApp == 'TESOURA') {
        derrotas++;
        return 'D';
      }
    }
    if (escolhaUsuario == 'TESOURA') {
      if (escolhaApp == 'PAPEL') {
        vitorias++;
        return 'G';
      } else if (escolhaApp == 'TESOURA') {
        empates++;
        return 'E';
      } else if (escolhaApp == 'PEDRA') {
        derrotas++;
        return 'D';
      }
    }

    return '';
  }
}
