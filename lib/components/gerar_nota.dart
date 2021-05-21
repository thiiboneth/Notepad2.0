import 'package:flutter/material.dart';
import '../models/dados_nota.dart';

class GerarNota extends StatelessWidget {
  final DadosNota _dadosNota;

  GerarNota(this._dadosNota);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.sticky_note_2),
        title: Text(_dadosNota.titulo.toString()),
        subtitle: Text(_dadosNota.descricao.toString()),
        onTap: () async {
          await Navigator.of(context).pushNamed(
            'editar-notas',
            arguments: {'dados_nota': _dadosNota},
          );
        },
      ),
    );
  }
}
