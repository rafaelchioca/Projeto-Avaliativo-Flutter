import 'package:banco_veraz/models/contato.dart';
import 'package:banco_veraz/screens/formulario_contato.dart';
import 'package:banco_veraz/widgets/item_contato.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatefulWidget {
  ListaContatos({super.key});
  final List<Contato> _contatos = [];

  @override
  State<StatefulWidget> createState() {
    return ListaContatosState();
  }
}

class ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo[900],
        title: const Text(
          'Contatos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: ListView.builder(
          itemCount: widget._contatos.length,
          itemBuilder: (context, indice) {
            final contato = widget._contatos[indice];
            return ItemContato(contato);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[900],
        onPressed: () {
          final Future<Contato?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioContato();
              },
            ),
          );
          future.then(
            (contatoRecebido) {
              debugPrint('chegou no then do future');
              debugPrint('$contatoRecebido');
              if (contatoRecebido != null) {
                setState(() {
                  widget._contatos.add(contatoRecebido);
                });
              }
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
