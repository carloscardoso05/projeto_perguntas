import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'questao.dart';
import 'reposta.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<String> respostas;
  final void Function() respostaCallback;

  Questionario({required this.pergunta, required this.respostas, required this.respostaCallback});

  List<Widget> get respostasWidgets {
    return respostas
        .map((texto) => Resposta(text: texto, onPressed: respostaCallback))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(pergunta),
        ...respostasWidgets,
      ],
    );
  }
}
