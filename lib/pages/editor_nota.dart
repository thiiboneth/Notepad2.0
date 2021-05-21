import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/dados_nota.dart';
import 'package:flutter/material.dart';

class EditorNota extends StatefulWidget {
  //controlar de criação de notas
  @override
  _EditorNotaState createState() => _EditorNotaState();
}

class _EditorNotaState extends State<EditorNota> {
  final TextEditingController _controladorTitulo = TextEditingController();

  final TextEditingController _controladorDescricao = TextEditingController();

  DadosNota dadosNota;

  @override
  void didChangeDependencies() {
    Map args = ModalRoute.of(context).settings.arguments;
    if (args != null) {
      this.dadosNota = args['dados_nota'];
      _controladorTitulo.value = TextEditingValue(text: dadosNota.titulo);
      _controladorDescricao.value = TextEditingValue(text: dadosNota.descricao);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editor de Nota'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Editor(
              nota: _controladorTitulo,
              tituloNota: 'Titulo da Nota',
              Htitulo: 'Titulo'),
          Editor(
              nota: _controladorDescricao,
              tituloNota: 'Descrição da Nota',
              Htitulo: 'Texto',
              icone: Icons.message),
          ElevatedButton(
            onPressed: () => _criarNota(context),
            child: Text('Salvar'),
          ),
        ],
      ),
    );
  }

  void _criarNota(BuildContext context) {
    final String titulo = _controladorTitulo.text;
    final String descricao = _controladorDescricao.text;

    if (titulo != null && descricao != null) {
      print('Enviando nota titulo: $titulo com descrição: $descricao');
      final dadosCriados = DadosNota(titulo, descricao);
      Navigator.pop(context, dadosCriados);
    }
  }
}
