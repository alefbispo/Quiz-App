// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/lista_perguntas.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;
  const Resultado(this.pontuacao, this.reiniciarQuestionario, {Key? key})
      : super(key: key);

  String get fraseResultado {
    if (pontuacao == listaDePergunatas.length) {
      return '*** ACERTOU TUDO!!! *** \nSE ME CONHECE MESMO EM =D';
    }
    return 'Acertou ' +
        pontuacao.toString() +
        '\nDe ' +
        listaDePergunatas.length.toString();
    
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
