// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  const Resultado(this.pontuacao, this.reiniciarQuestionario, {Key? key})
      : super(key: key);

  String get fraseResultado {
    return 'Pontuação : ' + pontuacao.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ))
      ],
    );
  }
}
