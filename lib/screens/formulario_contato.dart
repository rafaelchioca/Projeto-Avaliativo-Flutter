import 'package:banco_veraz/models/contato.dart';
import 'package:banco_veraz/widgets/editor.dart';
import 'package:flutter/material.dart';

class FormularioContato extends StatelessWidget {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoEndereco =
      TextEditingController();
  final TextEditingController _controladorCampoTelefone =
      TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoCPF = TextEditingController();

  FormularioContato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.indigo[900],
          title: const Text(
            'Novo Contato',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Editor(
                  controlador: _controladorCampoNome,
                  rotulo: 'Nome',
                  dica: 'Nome do Contato',
                  tipoTeclado: TextInputType.text,
                ),
                Editor(
                  controlador: _controladorCampoEndereco,
                  rotulo: 'Endereço',
                  dica: 'Endereço do Contato',
                  icone: Icons.home,
                  tipoTeclado: TextInputType.text,
                ),
                Editor(
                  controlador: _controladorCampoTelefone,
                  rotulo: 'Telefone',
                  dica: 'Telefone do Contato',
                  icone: Icons.phone,
                  tipoTeclado: TextInputType.phone,
                ),
                Editor(
                  controlador: _controladorCampoEmail,
                  rotulo: 'E-mail',
                  dica: 'exemplo@mail.com',
                  icone: Icons.mail,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                Editor(
                  controlador: _controladorCampoCPF,
                  rotulo: 'CPF',
                  dica: '00000000000',
                  icone: Icons.perm_identity,
                  tipoTeclado: TextInputType.text,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.indigo[900]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(Colors.blue[900]),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _criaContato(
                      context,
                      _controladorCampoNome,
                      _controladorCampoEndereco,
                      _controladorCampoTelefone,
                      _controladorCampoEmail,
                      _controladorCampoCPF,
                    );
                  },
                  child: const Text('Confirmar'),
                ),
              ],
            ),
          ),
        ));
  }

  void _criaContato(
    BuildContext context,
    TextEditingController controladorCampoNome,
    TextEditingController controladorCampoEndereco,
    TextEditingController controladorCampoTelefone,
    TextEditingController controladorCampoEmail,
    TextEditingController controladorCampoCPF,
  ) {
    final String nome = controladorCampoNome.text;
    final String endereco = controladorCampoEndereco.text;
    final String telefone = controladorCampoTelefone.text;
    final String email = controladorCampoEmail.text;
    final String cpf = controladorCampoCPF.text;

    if (nome.isNotEmpty &&
        endereco.isNotEmpty &&
        telefone.isNotEmpty &&
        email.isNotEmpty &&
        cpf.isNotEmpty) {
      final contatoCriado = Contato(nome, endereco, telefone, email, cpf);
      debugPrint('$contatoCriado');
      Navigator.pop(context, contatoCriado);
    }
  }
}
