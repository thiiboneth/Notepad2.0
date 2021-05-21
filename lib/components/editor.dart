import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController nota;
  final String tituloNota;
  final String Htitulo;
  final IconData icone;

  Editor({this.nota, this.tituloNota, this.Htitulo, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //bloco 1
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: nota,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: tituloNota,
          hintText: Htitulo,
        ),
      ),
    );
  }
}
