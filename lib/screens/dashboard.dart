import 'package:banco_veraz/screens/lista_contatos.dart';
import 'package:banco_veraz/screens/lista_transferencias.dart';
import 'package:banco_veraz/widgets/item_dashboard.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo[900],
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ItemDashboard(
              title: 'Contatos',
              icon: Icons.people,
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListaContatos();
                    },
                  ),
                );
              },
            ),
            ItemDashboard(
              title: 'Transferências',
              icon: Icons.monetization_on,
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context as BuildContext,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListaTransferencias();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
