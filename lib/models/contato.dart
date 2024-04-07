import 'package:flutter/material.dart';

class Contato {
  final String nome;
  final String endereco;
  final String telefone;
  final String email;
  final String cpf;

  Contato(this.nome, this.endereco, this.telefone, this.email, this.cpf);

  String get cpfFormatado {
    final cpfNumerico = cpf.replaceAll(RegExp(r'\D'), '');

    if (cpfNumerico.length != 11) {
      return cpf; 
    }

    return '${cpfNumerico.substring(0, 3)}.${cpfNumerico.substring(3, 6)}.${cpfNumerico.substring(6, 9)}-${cpfNumerico.substring(9)}';
  }

  @override
  String toString() {
    return 'Contato{nome: $nome, endereco: $endereco, telefone: $telefone, email: $email, cpf: $cpf}';
  }
}