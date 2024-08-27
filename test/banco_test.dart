import 'package:test/test.dart';
import 'package:flutter_app/banco.dart';

void main() {
  group('ContaBancariaInteiro', () {
    test('deve depositar corretamente', () {
      final conta = ContaBancariaInteiro(100);
      conta.depositar(50);
      expect(conta.saldo, 150);
    });

    test('deve sacar corretamente', () {
      final conta = ContaBancariaInteiro(100);
      conta.sacar(30);
      expect(conta.saldo, 70);
    });
  });

  group('ContaBancariaDecimal', () {
    test('deve depositar corretamente', () {
      final conta = ContaBancariaDecimal(100.5);
      conta.depositar(25.75);
      expect(conta.saldo, 126.25);
    });

    test('deve sacar corretamente', () {
      final conta = ContaBancariaDecimal(100.5);
      conta.sacar(30.25);
      expect(conta.saldo, 70.25);
    });
  });
}