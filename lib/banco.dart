abstract class ContaBancaria<T> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo = _adicionar(saldo, valor);
  }

  void sacar(T valor) {
    saldo = _subtrair(saldo, valor);
  }

  T _adicionar(T a, T b);
  T _subtrair(T a, T b);
}

// Implementação específica para contas com saldo inteiro
class ContaBancariaInteiro extends ContaBancaria<int> {
  ContaBancariaInteiro(int saldo) : super(saldo);

  @override
  int _adicionar(int a, int b) => a + b;

  @override
  int _subtrair(int a, int b) => a - b;
}

// Implementação específica para contas com saldo decimal
class ContaBancariaDecimal extends ContaBancaria<double> {
  ContaBancariaDecimal(double saldo) : super(saldo);

  @override
  double _adicionar(double a, double b) => a + b;

  @override
  double _subtrair(double a, double b) => a - b;
}
