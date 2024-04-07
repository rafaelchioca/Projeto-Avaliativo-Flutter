import 'package:banco_veraz/models/transferencia.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia, {super.key});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    final valorFormatado = formatter.format(_transferencia.valor);
    final numeroContaFormatado = _transferencia.numeroContaFormatado;

    return Card(
      color: Color.fromRGBO(255, 255, 255, 0.1),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.monetization_on, color: Colors.green),
        title: Text(
          valorFormatado,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          numeroContaFormatado,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
