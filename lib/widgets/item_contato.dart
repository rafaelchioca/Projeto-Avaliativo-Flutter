import 'package:banco_veraz/models/contato.dart';
import 'package:flutter/material.dart';

class ItemContato extends StatelessWidget {
  final Contato _contato;

  const ItemContato(this._contato, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cpfFormatado = _contato.cpfFormatado;


    return Card(
      color: Color.fromRGBO(255, 255, 255, 0.1),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(Icons.person, 
        color: Colors.white),
        title: Text(
          'Nome: ${_contato.nome}',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Endereço: ${_contato.endereco}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Telefone: ${_contato.telefone}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
            Text(
              'E-mail: ${_contato.email}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
            Text(
              'CPF: ${cpfFormatado}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
