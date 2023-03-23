// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'questao.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  void _responder() {
    if (_perguntaIndex < perguntas.length - 1) {
      setState(() {
        ++_perguntaIndex;
      });
    }
    print(_perguntaIndex);
  }

  int _perguntaIndex = 0;
  String resposta = '';
  final perguntas = [
    'Qual seu animal favorito?',
    'Qual sua cor favorita?',
    'Qual seu jogo favorito?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OI, MEU MOZINHOOO!'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaIndex]),
            ElevatedButton(onPressed: _responder, child: Text('Resposta')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta')),
            Text(resposta)
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
