import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() selecionado;

  const Respostas(this.texto, this.selecionado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: selecionado,
      ),
    );
  }
}
