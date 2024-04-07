import 'package:banco_veraz/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const BankApp());

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Dashboard(),
      ),
    );
  }
}
