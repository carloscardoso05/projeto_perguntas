// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'questionario.dart';
import 'questao.dart';
import 'reposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaIndex = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['Amarelo', 'Azul', 'Vermelho', 'Verde', 'Cinza']
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Peixinho', 'Pássarinho', 'Coelho']
    },
    {
      'texto': 'Qual é seu jogo favorito?',
      'respostas': [
        'Minecraft',
        'League of Legends',
        'Hades',
        'Amor Doce',
        'Roblox'
      ]
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        ++_perguntaIndex;
      });
    }
  }

  void _resetar() {
    _perguntaIndex = 0;
  }

  bool get temPerguntaSelecionada {
    return _perguntaIndex < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaIndex].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Perguntas'), centerTitle: true),
          body: temPerguntaSelecionada
              ? Questionario(
                  pergunta: _perguntas[_perguntaIndex]['texto'].toString(),
                  respostas: respostas,
                  respostaCallback: _responder,
                )
              : Resultado(text: 'Parabéns')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
