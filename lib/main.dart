import 'package:bytebank/pages/criar_nota.dart';
import 'package:bytebank/pages/editor_nota.dart';
import 'package:flutter/material.dart';

void main() => runApp(BlocodeNotas());

//runApp
class BlocodeNotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'criar-notas': (_) => CriarNotas(),
        'editar-notas': (_) => EditorNota()
      },
      initialRoute: 'criar-notas',
    );
  }
}
