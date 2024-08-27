// lib/main.dart

import 'package:flutter/material.dart';
import 'banco.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Criando uma conta bancária com saldo inteiro
    final contaInteira = ContaBancariaInteiro(500);
    contaInteira.depositar(200);
    contaInteira.sacar(150);

    // Criando uma conta bancária com saldo decimal
    final contaDecimal = ContaBancariaDecimal(1000.75);
    contaDecimal.depositar(350.50);
    contaDecimal.sacar(125.25);

    return Scaffold(
      appBar: AppBar(
        title: Text('Saldo das Contas Bancárias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Saldo inicial da conta inteira: 500',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Saldo após operações: ${contaInteira.saldo}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Saldo inicial da conta decimal: 1000.75',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Saldo após operações: ${contaDecimal.saldo}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
