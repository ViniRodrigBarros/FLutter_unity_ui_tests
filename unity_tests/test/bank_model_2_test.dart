import 'package:flutter_test/flutter_test.dart';
import 'package:estilizacao_componentes/models/bank.dart';

void main() {
  group("'points deposit group", () {
    test('cash deposit', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 20);
      expect(bank.available, 10);
      expect(bank.earned, 10);
    });
    test('cash deposit', () {
      final bank = BankModel();
      bank.deposit(20);
      expect(bank.points, 40);
      expect(bank.available, 20);
      expect(bank.earned, 20);
    });
  });
  test('cash trasnfer', () {
    final bank = BankModel();
    bank.transfer(20);
    expect(bank.points, 0);
    expect(bank.available, 0);
    expect(bank.earned, 0);
  });
}
