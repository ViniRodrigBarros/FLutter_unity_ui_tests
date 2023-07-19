import 'package:flutter_test/flutter_test.dart';
import 'package:estilizacao_componentes/models/bank.dart';

void main() {
  test('points deposit must be equal to 2Xcash deposit', () {
    final bank = BankModel();
    bank.deposit(10);
    expect(bank.points, 20);
  });

  group("test", () {
    test('points deposit must be equal to 2Xcash deposit', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 20);
    });
    test('points deposit must be equal to 2Xcash deposit', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.available, 10);
    });
  });
}
