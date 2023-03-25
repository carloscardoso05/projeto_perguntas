import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const Resposta(
      {required String this.text, required void Function() this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
      width: double.infinity,
      margin: EdgeInsets.only(right: 10, left: 10),
    );
  }
}
