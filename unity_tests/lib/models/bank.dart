class BankModel {
  double available = 0;
  double spent = 0;
  double earned = 0;
  double points = 0;

  void deposit(double money) {
    available += money;
    earned += money;
    points += 2 * money;
  }

  void transfer(double money) {
    if (available > money) {
      available -= money;
      points += 2 * money;
      spent += money;
    } else {
      available = available;
      points = 0;
      spent = 0;
    }
  }
}
