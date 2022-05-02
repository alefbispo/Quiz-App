// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/lista_perguntas.dart';
import 'package:quiz_app/questionario.dart';
import 'package:quiz_app/resultado.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < listaDePergunatas.length;
  }

  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
  }

  void reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz App'),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: listaDePergunatas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder,
              )
            : Resultado(pontuacaoTotal, reiniciarQuestionario),
      ),
    );
  }
}
