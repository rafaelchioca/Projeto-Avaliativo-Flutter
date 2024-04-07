import 'package:flutter/material.dart';

class Transferencia {
  final double valor;
  final String numeroConta;

  Transferencia(this.valor, this.numeroConta);

  String get numeroContaFormatado {
    if (numeroConta.isNotEmpty) {
      final lastChar = numeroConta.substring(numeroConta.length - 1);
      return 'Conta: ${numeroConta.substring(0, numeroConta.length - 1)}-$lastChar';
    }
    return 'Conta: $numeroConta';
  }

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
