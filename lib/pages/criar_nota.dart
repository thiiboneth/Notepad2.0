import 'package:bytebank/components/gerar_nota.dart';
import 'package:bytebank/models/dados_nota.dart';
import 'package:flutter/material.dart';

class CriarNotas extends StatefulWidget {
  @override
  _CriarNotasState createState() => _CriarNotasState();
}

class _CriarNotasState extends State<CriarNotas> {
  final List<DadosNota> _notas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloco de Notas'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _notas.length,
        itemBuilder: (context, indice) {
          final nota = _notas[indice];
          return GerarNota(nota);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final nota = await Navigator.of(context).pushNamed(
            'editar-notas',
          );
          if (nota != null) {
            setState(
              () {
                _notas.add(nota);
              },
            );
          }

          debugPrint('$nota');
          debugPrint(_notas.length.toString());
        },
      ),
    );
  }
}
